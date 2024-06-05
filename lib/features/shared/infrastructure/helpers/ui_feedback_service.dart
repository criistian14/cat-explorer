import 'package:cat_explorer/config/base_errors.dart';
import 'package:flutter/material.dart';

enum TypeAlert {
  error,
  success,
  warning,
  info,
}

abstract class UiFeedbackService {
  void showSnackBar(
    BuildContext context, {
    required String message,
    Color backgroundColor = Colors.black,
    String? textAction,
    Color textColor = Colors.black,
    VoidCallback? onPressed,
    int duration = 100,
  });

  void showSnackBarError(
    BuildContext context, {
    required ErrorSnackbarBase error,
    Color backgroundColor = Colors.black,
    Color textColor = Colors.black,
    VoidCallback? onPressed,
    int duration = 100,
  });

  Future<void> showGenericAlert(
    BuildContext context, {
    required String title,
    required String description,
    Key? key,
    TypeAlert type = TypeAlert.error,
  });

  Future<void> showAlertError(
    BuildContext context, {
    required ErrorAlertBase error,
    Key? key,
  });
}
