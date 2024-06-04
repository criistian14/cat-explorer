import 'package:cat_explorer/features/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class MainCategoriesCat extends StatelessWidget {
  const MainCategoriesCat({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;

    return SizedBox(
      height: 12.h(context),
      width: double.infinity,
      child: ListView.separated(
        scrollDirection: Axis.horizontal,
        itemCount: 10,
        padding: EdgeInsets.symmetric(
          horizontal: 5.w(context),
        ),
        separatorBuilder: (context, index) => SizedBox(
          width: 4.5.w(context),
        ),
        itemBuilder: (context, index) {
          return Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Container(
                decoration: BoxDecoration(
                  shape: BoxShape.circle,
                  border: Border.all(
                    color: index == 0 ? colors.primary : Colors.transparent,
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
                  child: Image.network(
                    'https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg',
                    fit: BoxFit.cover,
                  ),
                ),
              ),

              // * Title
              Text(
                'Main Cat',
                style: textTheme.titleLarge,
              ),
            ],
          ).animate(delay: 300.ms).fadeIn();
        },
      ),
    ).animate(delay: 700.ms).fadeIn().slideX(begin: 0.5);
  }
}
