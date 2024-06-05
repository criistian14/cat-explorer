import 'package:cat_explorer/config/app_assets.dart';
import 'package:cat_explorer/config/types/typedef.dart';
import 'package:cat_explorer/config/usecase.dart';
import 'package:cat_explorer/features/cats/cats.dart';

class GetBreedCategoriesUseCase extends UseCase<List<Category>, List<Breed>> {
  const GetBreedCategoriesUseCase();

  @override
  ResultFuture<List<Category>> call(List<Breed> params) async {
    final categories = <Category>[
      Category(
        name: 'most_energetic',
        image: AppAssets.mostEnergetic,
      ),
      Category(
        name: 'highly_intelligent',
        image: AppAssets.highlyIntelligent,
      ),
      Category(
        name: 'social',
        image: AppAssets.social,
      ),
      Category(
        name: 'long_lifespan',
        image: AppAssets.longLifespan,
      ),
      Category(
        name: 'dog_friendly',
        image: AppAssets.dogFriendly,
      ),
      Category(
        name: 'kid_friendly',
        image: AppAssets.kidFriendly,
      ),
    ];

    return Success(categories);
  }
}
