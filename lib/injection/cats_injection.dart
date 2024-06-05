part of 'injection_container.dart';

Future<void> initCatsInjection() async {
  sl
    // * Data Sources
    ..registerLazySingleton<CatRemoteDataSource>(
      () => CatApiDataSourceImpl(httpService: sl()),
    )

    // * Repositories
    ..registerLazySingleton<CatRepository>(
      () => CatRepositoryImpl(networkInfo: sl(), remoteDataSource: sl()),
    )

    // *  UseCases
    ..registerLazySingleton(
      () => GetAllCatBreedsUseCase(catRepository: sl()),
    )
    ..registerLazySingleton(GetBreedCategoriesUseCase.new)

    // * Presentation
    ..registerFactory(SearchBloc.new)
    ..registerFactory(
      () => HomeBloc(
        getAllCatBreedsUseCase: sl(),
        getBreedCategoriesUseCase: sl(),
      ),
    );
}
