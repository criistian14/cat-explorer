import 'package:cat_explorer/features/cats/cats.dart';
import 'package:cat_explorer/features/shared/shared.dart';
import 'package:cat_explorer/l10n/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class BreedSearchField extends StatelessWidget {
  const BreedSearchField({super.key});

  @override
  Widget build(BuildContext context) {
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;
    final l10n = context.l10n;

    return Padding(
      padding: EdgeInsets.symmetric(
        vertical: 1.h(context),
        horizontal: 7.w(context),
      ),
      child: GestureDetector(
        onTap: () => showSearch(
          context: context,
          delegate: BreedSearchDelegate(context),
        ),
        child: Container(
          padding: EdgeInsets.symmetric(
            vertical: 1.5.h(context),
            horizontal: 3.w(context),
          ),
          decoration: BoxDecoration(
            color: colors.colorDisable.withOpacity(0.2),
            borderRadius: BorderRadius.circular(6),
          ),
          child: Row(
            children: [
              Icon(
                CupertinoIcons.search,
                color: colors.colorText.withOpacity(0.5),
              ),
              SizedBox(width: 2.w(context)),
              Text(
                l10n.search_hint_cats,
                style: textTheme.bodyMedium?.copyWith(
                  color: colors.colorText.withOpacity(0.5),
                ),
              ),
            ].animate(delay: 500.ms, interval: 300.ms).fadeIn(),
          ),
        ),
      ),
    );
  }
}
