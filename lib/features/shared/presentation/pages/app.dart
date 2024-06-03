import 'package:cat_explorer/features/shared/shared.dart';
import 'package:cat_explorer/injection/injection_container.dart';
import 'package:cat_explorer/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class App extends StatelessWidget {
  const App({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => sl<RouterCubit>(),
      child: const _AppWithProviders(),
    );
  }
}

class _AppWithProviders extends StatelessWidget {
  const _AppWithProviders();

  @override
  Widget build(BuildContext context) {
    final router = context.watch<RouterCubit>();

    return MaterialApp.router(
      debugShowCheckedModeBanner: false,
      theme: lightTheme,
      darkTheme: darkTheme,
      localizationsDelegates: AppLocalizations.localizationsDelegates,
      supportedLocales: AppLocalizations.supportedLocales,
      routerConfig: router.state,
    );
  }
}
