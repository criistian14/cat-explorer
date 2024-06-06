import 'package:cat_explorer/features/cats/cats.dart';
import 'package:cat_explorer/l10n/l10n.dart';
import 'package:flutter/material.dart';

extension CategoryExt on Category {
  String title(BuildContext context) {
    final l10n = context.l10n;

    if (name == 'most_energetic') return l10n.most_energetic;
    if (name == 'highly_intelligent') return l10n.highly_intelligent;
    if (name == 'social') return l10n.social;
    if (name == 'long_lifespan') return l10n.long_lifespan;
    if (name == 'dog_friendly') return l10n.dog_friendly;
    if (name == 'kid_friendly') return l10n.kid_friendly;

    return name;
  }
}
