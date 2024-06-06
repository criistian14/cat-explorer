import 'package:cat_explorer/config/base_errors.dart';

class NoInternetConnection implements ErrorSnackbarBase {
  const NoInternetConnection();
}

class ConnectionTimeout implements ErrorSnackbarBase {
  const ConnectionTimeout({
    required this.endpoint,
    this.time = 50,
  });

  final String endpoint;
  final int time;
}
