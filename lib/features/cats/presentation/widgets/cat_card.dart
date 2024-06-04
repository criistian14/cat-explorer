import 'dart:ui';

import 'package:cat_explorer/features/shared/shared.dart';
import 'package:flutter/material.dart';
import 'package:flutter_animate/flutter_animate.dart';

class CatCard extends StatelessWidget {
  const CatCard({super.key});

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;

    return Stack(
      children: [
        Positioned(
          top: 0,
          left: 0,
          right: 0,
          child: ClipRRect(
            borderRadius: BorderRadius.circular(10),
            child: Image.network(
              'https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg',
              fit: BoxFit.cover,
              // height: 23.h(context),
            ),
          ),
        ),

        //  * Name
        Positioned(
          top: 0.5.h(context),
          left: 1.w(context),
          right: 1.w(context),
          child: ClipRRect(
            borderRadius: const BorderRadius.vertical(
              top: Radius.circular(10),
              bottom: Radius.circular(10),
            ),
            child: BackdropFilter(
              filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
              child: Padding(
                padding: EdgeInsets.symmetric(
                  horizontal: 1.5.w(context),
                  vertical: 0.5.h(context),
                ),
                child: Text(
                  'The cat white space',
                  style: textTheme.headlineSmall,
                ),
              ),
            ),
          ),
        ),

        // * Country
        Positioned(
          bottom: 0,
          left: 0,
          right: 0,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                'Colombia',
                style: textTheme.headlineMedium,
              ),
              Text(
                '5 Inteligencia',
                style: textTheme.bodySmall,
              ),
            ],
          ),
        ),
      ],
    ).animate(delay: 300.ms).fadeIn();
  }
}
