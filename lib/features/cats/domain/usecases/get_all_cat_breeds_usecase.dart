import 'package:cat_explorer/config/types/typedef.dart';
import 'package:cat_explorer/config/usecase.dart';
import 'package:cat_explorer/features/cats/cats.dart';

class GetAllCatBreedsUseCase extends UseCase<List<Breed>, NoParams> {
  GetAllCatBreedsUseCase({
    required CatRepository catRepository,
  }) : _catRepository = catRepository;

  final CatRepository _catRepository;

  @override
  ResultFuture<List<Breed>> call(NoParams params) async {
    return _catRepository.getAllBreeds();
  }
}
