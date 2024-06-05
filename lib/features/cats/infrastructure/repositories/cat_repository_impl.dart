import 'package:cat_explorer/config/network_info.dart';
import 'package:cat_explorer/config/types/typedef.dart';
import 'package:cat_explorer/features/cats/cats.dart';
import 'package:cat_explorer/features/shared/shared.dart';

class CatRepositoryImpl implements CatRepository {
  CatRepositoryImpl({
    required NetworkInfo networkInfo,
    required CatRemoteDataSource remoteDataSource,
  })  : _networkInfo = networkInfo,
        _remoteDataSource = remoteDataSource;

  final NetworkInfo _networkInfo;
  final CatRemoteDataSource _remoteDataSource;

  @override
  ResultFuture<List<Breed>> getAllBreeds() async {
    try {
      if (!await _networkInfo.isConnected) {
        return const Failure(NoInternetConnection());
      }

      final breeds = await _remoteDataSource.getBreeds();
      return Success(breeds);

      // * Errors
    } on ConnectionTimeout catch (e) {
      return Failure(e);
    } on EndPointError catch (e) {
      return Failure(e);
    } on HttpErrorParse catch (e) {
      return Failure(e);
    } catch (e) {
      return Failure(
        CustomError(
          e.toString(),
          errorCode: 'get-breeds',
        ),
      );
    }
  }
}
