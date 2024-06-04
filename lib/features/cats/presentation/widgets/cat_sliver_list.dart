import 'package:cat_explorer/features/cats/cats.dart';
import 'package:cat_explorer/features/shared/shared.dart';
import 'package:flutter/material.dart';

class CatSliverList extends StatelessWidget {
  const CatSliverList({super.key});

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(
        horizontal: 5.w(context),
        vertical: 2.h(context),
      ),
      // sliver: SliverGrid.builder(
      sliver: SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 13 / 19,
          mainAxisSpacing: 2.h(context),
          crossAxisSpacing: 4.w(context),
        ),
        itemCount: 10,
        itemBuilder: (context, index) => const CatCard(),
      ),
    );
  }
}
