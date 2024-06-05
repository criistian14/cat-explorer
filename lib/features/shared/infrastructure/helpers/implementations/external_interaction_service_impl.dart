import 'package:cat_explorer/features/shared/shared.dart';
import 'package:url_launcher/url_launcher.dart' as url_launcher;

class ExternalInteractionServiceImpl implements ExternalInteractionService {
  @override
  Future<void> launchUrl(String url) async {
    final urlToLaunch = Uri.parse(url);

    if (await url_launcher.canLaunchUrl(urlToLaunch)) {
      await url_launcher.launchUrl(urlToLaunch);
    } else {
      throw CantOpenUrlError(url);
    }
  }
}
