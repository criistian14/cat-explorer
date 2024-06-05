import 'package:cat_explorer/config/types/typedef.dart';

enum HttpMethods {
  get,
  post,
  put,
  delete,
  patch,
}

abstract class HttpService {
  String get baseUrl;
  int get timeoutSeg;

  (int, T?) parseResponse<T>(
    ResponseHTTP<T>? response,
    String name,
  );

  Future<(int, T?)> makeRequest<T>({
    required String endpoint,
    required String name,
    HttpMethods method = HttpMethods.get,
    Map<String, String>? headers,
    Map<String, dynamic>? body,
    bool needAuth = false,
  });

  void validateCommonErrors(
    int code,
    dynamic responseFormat, {
    required String name,
  });
}
