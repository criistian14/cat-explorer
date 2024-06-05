import 'package:cat_explorer/config/types/typedef.dart';
import 'package:cat_explorer/features/cats/cats.dart';

abstract class CatRepository {
  ResultFuture<List<Breed>> getAllBreeds();
}
