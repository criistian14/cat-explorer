import 'dart:ui';

import 'package:animations/animations.dart';
import 'package:cached_network_image/cached_network_image.dart';
import 'package:cat_explorer/config/app_assets.dart';
import 'package:cat_explorer/features/cats/cats.dart';
import 'package:cat_explorer/features/shared/shared.dart';
import 'package:cat_explorer/l10n/l10n.dart';
import 'package:flutter/material.dart';

class BreedCard extends StatelessWidget {
  const BreedCard({
    super.key,
    required this.isLoading,
    this.breed,
  });

  final bool isLoading;
  final Breed? breed;

  @override
  Widget build(BuildContext context) {
    final textTheme = Theme.of(context).textTheme;
    final l10n = context.l10n;

    return OpenContainer(
      openBuilder: (context, closedContainer) {
        return BreedDetailPage(
          breed: breed!,
        );
      },
      closedElevation: 0,
      closedColor: Colors.transparent,
      closedBuilder: (context, openContainer) {
        return ShimmerLoading(
          isLoading: isLoading,
          child: Material(
            color: Colors.transparent,
            child: InkWell(
              onTap: () {
                if (breed == null) return;

                openContainer();
              },
              child: Stack(
                children: [
                  Positioned(
                    top: 0,
                    left: 0,
                    right: 0,
                    child: ClipRRect(
                      borderRadius: BorderRadius.circular(10),
                      child: Hero(
                        tag: 'image-$key',
                        child: CachedNetworkImage(
                          imageUrl: breed?.image?.url ??
                              'https://cdn2.thecatapi.com/images/0XYvRd7oD.jpg',
                          errorWidget: (context, url, error) => Image.asset(
                            AppAssets.imageErrorCat,
                            fit: BoxFit.cover,
                          ),
                          fit: BoxFit.cover,
                          height: 23.h(context),
                        ),
                      ),
                    ),
                  ),

                  //  * Origin Country
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
                        child: Container(
                          color: Colors.black26,
                          padding: EdgeInsets.symmetric(
                            horizontal: 1.5.w(context),
                            vertical: 0.5.h(context),
                          ),
                          child: Hero(
                            tag: 'country-$key',
                            child: Text(
                              breed?.origin ?? l10n.no_information,
                              style: textTheme.headlineSmall?.copyWith(
                                color: Colors.white,
                              ),
                              maxLines: 1,
                              overflow: TextOverflow.ellipsis,
                            ),
                          ),
                        ),
                      ),
                    ),
                  ),

                  // * Basic Info
                  Positioned(
                    bottom: 0,
                    left: 0,
                    right: 0,
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Hero(
                          tag: 'name-$key',
                          child: Text(
                            breed?.name ?? l10n.no_information,
                            style: textTheme.headlineMedium,
                            maxLines: 2,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                        SizedBox(height: 0.2.h(context)),
                        Hero(
                          tag: 'intelligence-$key',
                          child: Text(
                            breed?.intelligenceForHumans(context) ??
                                l10n.no_information,
                            style: textTheme.bodySmall,
                            maxLines: 1,
                            overflow: TextOverflow.ellipsis,
                          ),
                        ),
                      ],
                    ),
                  ),
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}
