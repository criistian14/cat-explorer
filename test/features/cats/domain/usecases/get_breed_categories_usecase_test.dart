import 'package:cat_explorer/config/types/typedef.dart';
import 'package:cat_explorer/config/usecase.dart';
import 'package:cat_explorer/features/cats/cats.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  late GetBreedCategoriesUseCase getBreedCategoriesUseCase;

  setUp(() {
    getBreedCategoriesUseCase = const GetBreedCategoriesUseCase();
  });

  test(
    'should return Success Category list',
    () async {
      // act
      final result = await getBreedCategoriesUseCase(const NoParams());

      // assert
      expect(result, isA<Success<List<Category>>>());
      expect((result as Success<List<Category>>).value.length, equals(6));
    },
  );
}
