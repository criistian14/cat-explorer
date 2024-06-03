import 'package:flutter/widgets.dart';
import 'package:cat_explorer/l10n/arb/app_localizations.dart';

export 'arb/app_localizations.dart';

extension AppLocalizationsX on BuildContext {
  AppLocalizations get l10n => AppLocalizations.of(this);
}
