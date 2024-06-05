import 'package:cat_explorer/features/cats/cats.dart';

abstract class CatRemoteDataSource {
  Future<List<Breed>> getBreeds();
}
