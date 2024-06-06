import 'dart:io';

import 'package:flutter/material.dart';

extension SizedContext on BuildContext {
  double get pixelsPerInch => Platform.isAndroid || Platform.isIOS ? 150 : 96;

  /// Returns same as MediaQuery.of(context)
  MediaQueryData get mq => MediaQuery.of(this);

  /// Returns if Orientation is landscape
  bool get isLandscape => mq.orientation == Orientation.landscape;

  /// Returns same as MediaQuery.of(context).size
  Size get sizePx => mq.size;

  /// Returns same as MediaQuery.of(context).size.width
  double get widthPx => sizePx.width;

  /// Returns same as MediaQuery.of(context).height
  double get heightPx => sizePx.height;
}

extension NumSizeExt on num {
  /// Returns fraction (0-100) % of screen width in pixels
  double w(BuildContext context) {
    return context.widthPx * (this / 100);
  }

  /// Returns fraction (0-100) % of screen height in pixels
  double h(BuildContext context) {
    return context.heightPx * (this / 100);
  }
}
