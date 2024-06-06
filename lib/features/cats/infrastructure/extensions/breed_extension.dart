import 'package:cat_explorer/features/cats/cats.dart';
import 'package:cat_explorer/l10n/l10n.dart';
import 'package:flutter/material.dart';

extension BreedExt on Breed {
  String intelligenceForHumans(BuildContext context) {
    final l10n = context.l10n;
    final intelligenceLevel = intelligence ?? 0;

    if (intelligenceLevel >= 5) return l10n.very_intelligent;
    if (intelligenceLevel == 4) return l10n.intelligent;

    return l10n.average_intelligence;
  }

  bool applyFilter(Category? category) {
    if (category == null) return false;

    switch (category.name) {
      case 'most_energetic':
        return (energyLevel ?? 0) >= 4;

      case 'highly_intelligent':
        return (intelligence ?? 0) >= 4;

      case 'social':
        return (socialNeeds ?? 0) >= 4;

      case 'long_lifespan':
        if (lifeSpan == null) return false;
        final lifeSpanSplit = lifeSpan!.split(' - ');
        final maxLifeSpan = int.tryParse(lifeSpanSplit.last) ?? 0;

        return maxLifeSpan >= 15;

      case 'dog_friendly':
        return (dogFriendly ?? 0) >= 4;

      case 'kid_friendly':
        return (childFriendly ?? 0) >= 4;
    }

    return false;
  }
}
