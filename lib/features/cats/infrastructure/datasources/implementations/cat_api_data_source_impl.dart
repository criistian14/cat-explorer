import 'package:cat_explorer/features/cats/cats.dart';
import 'package:cat_explorer/features/shared/shared.dart';

class CatApiDataSourceImpl implements CatRemoteDataSource {
  const CatApiDataSourceImpl({
    required HttpService httpService,
  }) : _httpService = httpService;

  final HttpService _httpService;

  @override
  Future<List<Breed>> getBreeds() async {
    final (code, responseFormat) =
        await _httpService.makeRequest<List<dynamic>>(
      endpoint: '/v1/breeds',
      name: 'get-breeds',
      needAuth: true,
    );

    _httpService.validateCommonErrors(
      code,
      responseFormat,
      name: 'get-breeds',
    );

    if (responseFormat == null) {
      throw EndPointError(
        code: code,
        endpoint: 'get-breeds',
        isEmptyData: true,
      );
    }

    final data = responseFormat.map(
      (value) => BreedModel.fromJson(value as Map),
    );
    return data.map(BreedMapper.breedModelToEntity).toList();
  }
}
