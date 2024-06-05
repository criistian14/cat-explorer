import 'package:cat_explorer/config/types/typedef.dart';
import 'package:cat_explorer/features/shared/shared.dart';
import 'package:dio/dio.dart';
import 'package:flutter_dotenv/flutter_dotenv.dart';

class HttpServiceImpl implements HttpService {
  HttpServiceImpl({
    required Dio client,
  }) : _client = client {
    _client.options.baseUrl = baseUrl;
    _client.options.connectTimeout = Duration(seconds: timeoutSeg);
  }

  final Dio _client;

  @override
  String get baseUrl => dotenv.get(
        'URL',
        fallback: 'https://api.thecatapi.com',
      );

  @override
  int get timeoutSeg {
    final timeout = dotenv.maybeGet('TIME_OUT_SEC');
    if (timeout == null) return 50;

    return int.tryParse(timeout) ?? 50;
  }

  static const _defaultHeaders = <String, String>{
    'Accept': 'application/json',
    'Content-type': 'application/json',
  };

  @override
  Future<(int, T?)> makeRequest<T>({
    required String endpoint,
    required String name,
    HttpMethods method = HttpMethods.get,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
    bool needAuth = false,
  }) async {
    Map<String, String> headersToSend = {..._defaultHeaders};
    if (headers != null) {
      headersToSend = {...headers};
    }

    if (needAuth) {
      final auth = dotenv.maybeGet('API_KEY');
      if (auth != null) headersToSend['x-api-key'] = auth;
    }

    ResponseHTTP<T?>? response;

    try {
      response = await _client.request<T?>(
        endpoint,
        data: body,
        options: Options(
          method: method.name.toUpperCase(),
          headers: headersToSend,
        ),
      );
    } on DioException catch (e) {
      if (e.type == DioExceptionType.connectionTimeout ||
          e.type == DioExceptionType.receiveTimeout ||
          e.type == DioExceptionType.sendTimeout) {
        throw ConnectionTimeout(endpoint: name);
      }

      throw EndPointError(
        code: e.response?.statusCode ?? 0,
        endpoint: name,
        message: e.error.toString(),
      );
    } catch (_) {}

    return parseResponse(response, name);
  }

  @override
  (int, T?) parseResponse<T>(
    ResponseHTTP<T?>? response,
    String name,
  ) {
    if (response == null) {
      throw EndPointError(
        endpoint: name,
        code: 0,
        isEmptyData: true,
      );
    }

    final int code = response.statusCode ?? 444;
    final data = response.data;

    if (data == null) {
      return (code, null);
    }

    return (code, data);
  }

  @override
  void validateCommonErrors(
    int code,
    Object? responseFormat, {
    required String name,
  }) {
    if (code == 444) {
      throw ConnectionTimeout(endpoint: name);
    }

    if (code < 200 || code > 299) {
      throw EndPointError(
        code: code,
        endpoint: name,
        message: responseFormat?.toString(),
      );
    }
  }
}
