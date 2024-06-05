import 'package:cat_explorer/features/cats/cats.dart';
import 'package:cat_explorer/features/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MainCategoriesBreed extends StatelessWidget {
  const MainCategoriesBreed({
    super.key,
    required this.isLoading,
    this.categories = const [],
    this.categorySelected,
    this.onCategoryPressed,
  });

  final bool isLoading;
  final List<Category> categories;
  final Category? categorySelected;
  final void Function(Category category)? onCategoryPressed;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 12.h(context),
      width: double.infinity,
      child: ShimmerLoading(
        isLoading: isLoading,
        child: ListView.separated(
          physics: isLoading ? const NeverScrollableScrollPhysics() : null,
          scrollDirection: Axis.horizontal,
          itemCount: isLoading ? 6 : categories.length,
          padding: EdgeInsets.symmetric(
            horizontal: 5.w(context),
          ),
          separatorBuilder: (context, index) => SizedBox(
            width: 4.5.w(context),
          ),
          itemBuilder: (context, index) {
            final category = categories.isNotEmpty ? categories[index] : null;

            return CategoryItem(
              category: category,
              isActive: category?.name == categorySelected?.name,
              onCategoryPressed: (category) {
                if (isLoading) return;

                onCategoryPressed?.call(category);
              },
            );
          },
        ),
      ),
    ).animate(delay: 700.ms).fadeIn().slideX(begin: 0.5);
  }
}
