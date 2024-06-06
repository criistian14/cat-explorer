part of 'injection_container.dart';

Future<void> initSharedInjection() async {
  sl
    // * Helpers
    ..registerLazySingleton<NetworkInfo>(NetworkInfoImpl.new)
    ..registerLazySingleton<HttpService>(() => HttpServiceImpl(client: Dio()))
    ..registerLazySingleton<ExternalInteractionService>(
      ExternalInteractionServiceImpl.new,
    )
    ..registerLazySingleton<UiFeedbackService>(UiFeedbackServiceImpl.new)

    // * Presentation
    ..registerFactory(RouterCubit.new);
}
