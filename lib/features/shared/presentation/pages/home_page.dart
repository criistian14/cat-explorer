import 'package:cat_explorer/features/counter/counter.dart';
import 'package:cat_explorer/features/shared/shared.dart';
import 'package:flutter/material.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(
        child: Center(
          child: ElevatedButton(
            onPressed: () => context.goPage(CounterPage.routeName),
            child: const Text('Go To Counter'),
          ),
        ),
      ),
    );
  }
}
