import 'package:cat_explorer/config/base_errors.dart';
import 'package:cat_explorer/features/shared/shared.dart';
import 'package:cat_explorer/l10n/l10n.dart';
import 'package:flutter/material.dart';

extension ExceptionExt on Exception {}

extension ErrorSnackbarBaseExtension on ErrorSnackbarBase {
  String messageToShow(BuildContext context) {
    final l10n = context.l10n;

    if (this is NoInternetConnection) {
      return l10n.no_internet;
    }

    if (this is ConnectionTimeout) {
      final error = this as ConnectionTimeout;
      return '${l10n.timeout} \n\n${error.endpoint}';
    }

    if (this is EndPointError) {
      final error = this as EndPointError;

      if (error.isEmptyData) {
        return '${l10n.null_response_from_server} \n\n${error.endpoint} (${error.code})';
      }

      final message = error.message;

      if (message != null) {
        return '$message \n\n${error.endpoint} (${error.code})';
      }

      return '${l10n.endpoint_error} \n\n${error.endpoint} (${error.code})';
    }

    if (this is CantOpenUrlError) {
      final error = this as CantOpenUrlError;
      return '${l10n.url_open_error} \n\n${error.url}';
    }

    if (this is CustomError) {
      final error = this as CustomError;
      return '${error.message} ${error.errorCode != null ? '\n\n${error.errorCode}' : ''}';
    }

    if (this is HttpErrorParse) {
      final error = this as HttpErrorParse;
      final message = error.message;

      if (message != null) {
        return "$message - (${error.endpoint} - ${error.code ?? ''})";
      }

      return "${l10n.response_format_error}  \n\n${error.endpoint} (${error.code ?? ''})";
    }

    return toString();
  }
}

extension ErrorAlertBaseExtension on ErrorAlertBase {
  String titleToShow(BuildContext context) {
    final l10n = context.l10n;

    if (this is CustomAlertError) {
      final error = this as CustomAlertError;
      return error.title;
    }

    return l10n.error_title_default;
  }

  String descriptionToShow(BuildContext context) {
    if (this is CustomAlertError) {
      final error = this as CustomAlertError;
      return error.description;
    }

    return '';
  }

  TypeAlert typeAlertToShow() {
    return TypeAlert.error;
  }
}
