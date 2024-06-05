import 'dart:ui';

import 'package:cached_network_image/cached_network_image.dart';
import 'package:cat_explorer/config/app_assets.dart';
import 'package:cat_explorer/features/cats/cats.dart';
import 'package:cat_explorer/features/shared/shared.dart';
import 'package:cat_explorer/injection/injection_container.dart';
import 'package:cat_explorer/l10n/l10n.dart';
import 'package:flutter/material.dart';

class BreedDetailPage extends StatelessWidget {
  const BreedDetailPage({
    super.key,
    required this.breed,
  });

  static const routeName = '/detail';
  final Breed breed;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final textTheme = Theme.of(context).textTheme;
    final colors = Theme.of(context).colorScheme;

    return Scaffold(
      body: SafeArea(
        top: false,
        child: Column(
          children: [
            SizedBox(
              height: 50.h(context),
              width: double.infinity,
              child: Stack(
                children: [
                  Positioned.fill(
                    child: Hero(
                      tag: 'image-${breed.name}',
                      child: ClipRRect(
                        borderRadius: const BorderRadius.vertical(
                          bottom: Radius.circular(20),
                        ),
                        child: CachedNetworkImage(
                          imageUrl: breed.image?.url ??
                              'https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg',
                          errorWidget: (context, url, error) => Image.asset(
                            AppAssets.imageErrorCat,
                            fit: BoxFit.cover,
                          ),
                          fit: BoxFit.cover,
                        ),
                      ),
                    ),
                  ),

                  // * AppBar
                  Positioned(
                    top: context.mq.padding.top,
                    left: 3.w(context),
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(60),
                      child: BackdropFilter(
                        filter: ImageFilter.blur(sigmaX: 10, sigmaY: 10),
                        child: Material(
                          color: Colors.black12,
                          child: IconButton(
                            onPressed: () => context.goBack(),
                            icon: Icon(
                              Icons.keyboard_arrow_left,
                              size: 10.w(context),
                              color: Colors.white,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),
                ],
              ),
            ),

            // * Info
            Expanded(
              child: Scrollbar(
                child: ListView(
                  padding: EdgeInsets.symmetric(
                    horizontal: 5.w(context),
                    vertical: 5.w(context),
                  ),
                  children: [
                    // * Name
                    Hero(
                      tag: 'name-${breed.name}',
                      child: Text(
                        breed.name ?? l10n.no_information,
                        style: textTheme.displayMedium?.copyWith(
                          color: colors.primary,
                        ),
                      ),
                    ),
                    SizedBox(height: 2.h(context)),

                    // * Country
                    Hero(
                      tag: 'country-${breed.name}',
                      child: Text(
                        breed.origin ?? l10n.no_information,
                        style: textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 1.h(context)),

                    // * Life Span
                    Text(
                      l10n.lifespan_years(breed.lifeSpan ?? '10 - 12'),
                      style: textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 1.h(context)),

                    // * Intelligence
                    Hero(
                      tag: 'intelligence-${breed.name}',
                      child: Text(
                        '${breed.intelligenceForHumans(context)} (${breed.intelligence})',
                        style: textTheme.headlineSmall?.copyWith(
                          fontWeight: FontWeight.w500,
                        ),
                      ),
                    ),
                    SizedBox(height: 1.h(context)),

                    // * Life Span
                    Text(
                      '${l10n.adaptability} (${breed.adaptability})',
                      style: textTheme.headlineSmall?.copyWith(
                        fontWeight: FontWeight.w500,
                      ),
                    ),
                    SizedBox(height: 3.h(context)),

                    // * Description
                    Text(
                      l10n.description,
                      style: textTheme.headlineMedium?.copyWith(
                        color: colors.primary,
                      ),
                    ),
                    SizedBox(height: 1.h(context)),
                    Text(
                      breed.description ?? l10n.no_information,
                    ),
                    SizedBox(height: 3.h(context)),

                    // * Temperament
                    Text(
                      l10n.temperament,
                      style: textTheme.headlineMedium?.copyWith(
                        color: colors.primary,
                      ),
                    ),
                    SizedBox(height: 1.h(context)),
                    Text(
                      breed.temperament ?? l10n.no_information,
                    ),
                    SizedBox(height: 4.h(context)),

                    // * More info
                    if (breed.wikipediaUrl != null)
                      TextButton(
                        onPressed: () => _openUrl(context),
                        child: Text(
                          l10n.more_information,
                        ),
                      ),
                    if (breed.wikipediaUrl != null)
                      SizedBox(height: 4.h(context)),
                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }

  Future<void> _openUrl(BuildContext context) async {
    final url = breed.wikipediaUrl;
    if (url == null) return;

    try {
      await sl<ExternalInteractionService>().launchUrl(url);
    } catch (_) {
      sl<UiFeedbackService>().showSnackBarError(
        context,
        error: CantOpenUrlError(url),
      );
    }
  }
}
