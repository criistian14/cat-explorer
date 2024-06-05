import 'package:cat_explorer/features/cats/cats.dart';
import 'package:cat_explorer/features/shared/shared.dart';
import 'package:flutter/material.dart';

class BreedSliverList extends StatelessWidget {
  const BreedSliverList({
    super.key,
    required this.isLoading,
    this.breeds = const [],
  });

  final bool isLoading;
  final List<Breed> breeds;

  @override
  Widget build(BuildContext context) {
    return SliverPadding(
      padding: EdgeInsets.symmetric(
        horizontal: 5.w(context),
        vertical: 2.h(context),
      ),
      sliver: SliverGrid.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
          crossAxisCount: 2,
          childAspectRatio: 13 / 19,
          mainAxisSpacing: 2.h(context),
          crossAxisSpacing: 4.w(context),
        ),
        itemCount: isLoading ? 6 : breeds.length,
        itemBuilder: (context, index) => BreedCard(
          key: breeds.isNotEmpty
              ? Key(breeds[index].name.toString())
              : Key(index.toString()),
          isLoading: isLoading,
          breed: breeds.isNotEmpty ? breeds[index] : null,
        ),
      ),
    );
  }
}
