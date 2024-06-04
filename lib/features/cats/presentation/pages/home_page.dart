import 'package:cat_explorer/features/cats/cats.dart';
import 'package:cat_explorer/features/shared/shared.dart';
import 'package:cat_explorer/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class HomePage extends StatelessWidget {
  const HomePage({super.key});

  static const routeName = '/home';

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final textTheme = Theme.of(context).textTheme;

    return Scaffold(
      body: SafeArea(
        child: CustomScrollView(
          slivers: [
            // * Title
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 5.w(context),
                  vertical: 2.h(context),
                ),
                child: Text(
                  l10n.title_cats,
                  style: textTheme.displayMedium,
                )
                    .animate()
                    .fadeIn(duration: 800.milliseconds)
                    .slideY(duration: 300.milliseconds),
              ),
            ),

            // * Search field
            const SliverToBoxAdapter(
              child: CatSearchField(),
            ),

            // * Categories
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 5.w(context),
                  right: 5.w(context),
                  top: 2.5.h(context),
                  bottom: 1.h(context),
                ),
                child: Text(
                  l10n.explore_cat_categories,
                  style: textTheme.bodyMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                ).animate(delay: 700.ms).fadeIn(),
              ),
            ),
            const SliverToBoxAdapter(
              child: MainCategoriesCat(),
            ),

            // * Cat List
            SliverToBoxAdapter(
              child: Padding(
                padding: EdgeInsets.only(
                  left: 5.w(context),
                  right: 5.w(context),
                  top: 2.5.h(context),
                ),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Text(
                      l10n.cat_breed_list,
                      style: textTheme.headlineMedium,
                    ),
                    TextButton(
                      onPressed: () {},
                      child: Text(
                        l10n.view_all,
                      ),
                    ),
                  ],
                ),
              ).animate(delay: 800.ms).fadeIn(),
            ),
            const CatSliverList(),
          ],
        ),
      ),
    );
  }
}
