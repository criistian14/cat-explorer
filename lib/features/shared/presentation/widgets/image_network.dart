import 'package:cached_network_image/cached_network_image.dart';
import 'package:cat_explorer/config/app_assets.dart';
import 'package:cat_explorer/injection/injection_container.dart';
import 'package:flutter/material.dart';

class ImageNetwork extends StatelessWidget {
  const ImageNetwork({
    super.key,
    required this.imageUrl,
    this.assetImage,
    this.height,
  });

  final String imageUrl;
  final String? assetImage;

  final double? height;

  @override
  Widget build(BuildContext context) {
    if (sl.isTestMode) {
      return Image.asset(
        AppAssets.imageErrorCat,
        height: height,
        fit: BoxFit.cover,
      );
    }

    return CachedNetworkImage(
      imageUrl: imageUrl,
      errorWidget: (context, url, error) => Image.asset(
        assetImage ?? AppAssets.imageErrorCat,
        fit: BoxFit.cover,
      ),
      fit: BoxFit.cover,
      height: height,
    );
  }
}
