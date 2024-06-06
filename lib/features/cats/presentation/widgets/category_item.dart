import 'package:cat_explorer/config/app_assets.dart';
import 'package:cat_explorer/features/cats/cats.dart';
import 'package:cat_explorer/features/shared/shared.dart';
import 'package:cat_explorer/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CategoryItem extends StatelessWidget {
  const CategoryItem({
    super.key,
    this.isActive = false,
    this.category,
    this.onCategoryPressed,
  });

  final bool isActive;
  final Category? category;
  final void Function(Category category)? onCategoryPressed;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final colors = Theme.of(context).colorScheme;
    final textTheme = Theme.of(context).textTheme;

    return GestureDetector(
      onTap: () {
        if (category == null) return;

        onCategoryPressed?.call(category!);
      },
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Container(
            decoration: BoxDecoration(
              shape: BoxShape.circle,
              border: Border.all(
                color: isActive ? colors.primary : Colors.transparent,
                width: 2.5,
                strokeAlign: 0,
              ),
            ),
            width: 8.h(context),
            height: 8.h(context),
            margin: EdgeInsets.only(
              bottom: 0.5.h(context),
            ),
            padding: const EdgeInsets.all(2),
            child: ClipRRect(
              borderRadius: BorderRadius.circular(60),
              child: Image.asset(
                category?.image ?? AppAssets.imageErrorCat,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // * Title
          Text(
            category?.title(context) ?? l10n.no_information,
            style: textTheme.titleLarge,
          ),
        ],
      ).animate(delay: 300.ms).fadeIn(),
    );
  }
}
