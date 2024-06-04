import 'app_localizations.dart';

/// The translations for English (`en`).
class AppLocalizationsEn extends AppLocalizations {
  AppLocalizationsEn([String locale = 'en']) : super(locale);

  @override
  String get title_cats => 'Find Your Ideal Cat Breed';

  @override
  String get search_hint_cats => 'What cat breed are you looking for?';

  @override
  String get search_label_cats => 'Persian, Siamese, Bengal...';

  @override
  String get explore_cat_categories => 'Explore Different Cat Categories';

  @override
  String get cat_breed_list => 'List of Cat Breeds';

  @override
  String get view_all => 'View All';
}
