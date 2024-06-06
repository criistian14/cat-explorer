import 'package:cat_explorer/config/base_errors.dart';
import 'package:cat_explorer/features/shared/shared.dart';
import 'package:cat_explorer/l10n/l10n.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class UiFeedbackServiceImpl implements UiFeedbackService {
  UiFeedbackServiceImpl();

  final Set<String> _activeSnackbars = {};

  @override
  void showSnackBar(
    BuildContext context, {
    required String message,
    Color backgroundColor = Colors.black,
    String? textAction,
    Color textColor = Colors.black,
    VoidCallback? onPressed,
    int duration = 100,
  }) {
    if (_activeSnackbars.contains(message)) return;
    _activeSnackbars.add(message);

    final l10n = context.l10n;

    final snackBar = SnackBar(
      shape: const RoundedRectangleBorder(
        borderRadius: BorderRadius.vertical(
          top: Radius.circular(10),
        ),
      ),
      duration: Duration(seconds: duration),
      action: SnackBarAction(
        label: textAction ?? l10n.close,
        onPressed: () {
          onPressed?.call();
        },
      ),
      content: Text(
        message,
      ),
    );

    ScaffoldMessenger.of(context)
        .showSnackBar(snackBar)
        .closed
        .whenComplete(() {
      _activeSnackbars.remove(message);
    });
  }

  @override
  void showSnackBarError(
    BuildContext context, {
    required ErrorSnackbarBase error,
    Color backgroundColor = Colors.black,
    Color textColor = Colors.black,
    VoidCallback? onPressed,
    int duration = 100,
  }) {
    final message = error.messageToShow(context);

    showSnackBar(
      context,
      message: message,
      backgroundColor: backgroundColor,
      textColor: textColor,
      onPressed: onPressed,
      duration: duration,
    );
  }

  @override
  Future<void> showGenericAlert(
    BuildContext context, {
    required String title,
    required String description,
    Key? key,
    TypeAlert type = TypeAlert.error,
  }) async {
    final size = MediaQuery.of(context).size;
    final textTheme = Theme.of(context).textTheme;
    final l10n = context.l10n;

    final (icon, colorIcon) = _getIconAndColor(context, type);

    await showDialog<dynamic>(
      context: context,
      builder: (contexto) {
        return AlertDialog(
          key: key,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          contentPadding: EdgeInsets.zero,
          content: Column(
            mainAxisSize: MainAxisSize.min,
            children: <Widget>[
              Container(
                padding: const EdgeInsets.all(10),
                decoration: const BoxDecoration(
                  borderRadius: BorderRadius.vertical(
                    top: Radius.circular(10),
                  ),
                ),
                alignment: Alignment.center,
              ),
              Container(
                padding: const EdgeInsets.only(top: 20),
                child: Icon(
                  icon,
                  color: colorIcon,
                  size: size.width * 0.3,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Padding(
                padding: const EdgeInsets.symmetric(horizontal: 10),
                child: Text(
                  title,
                  textAlign: TextAlign.center,
                  style: textTheme.displaySmall,
                ),
              ),
              Padding(
                padding: const EdgeInsets.symmetric(
                  horizontal: 10,
                  vertical: 20,
                ),
                child: Text(
                  description,
                  textAlign: TextAlign.center,
                  style: textTheme.bodyMedium,
                ),
              ),
            ],
          ),
          actions: [
            FilledButton(
              onPressed: () {
                Navigator.pop(context);
              },
              child: Text(
                l10n.accept,
              ),
            ),
          ],
        );
      },
    );
  }

  (IconData, Color) _getIconAndColor(BuildContext context, TypeAlert type) {
    final colors = Theme.of(context).colorScheme;

    IconData icon;
    Color colorIcon;

    switch (type) {
      case TypeAlert.error:
        icon = CupertinoIcons.exclamationmark_circle;
        colorIcon = colors.error;

      case TypeAlert.success:
        icon = CupertinoIcons.checkmark_circle;
        colorIcon = colors.success;

      case TypeAlert.warning:
        icon = CupertinoIcons.exclamationmark_triangle;
        colorIcon = colors.warning;

      case TypeAlert.info:
        icon = CupertinoIcons.info_circle;
        colorIcon = colors.info;
    }

    return (icon, colorIcon);
  }

  @override
  Future<void> showAlertError(
    BuildContext context, {
    required ErrorAlertBase error,
    Key? key,
  }) async {
    final title = error.titleToShow(context);
    final description = error.descriptionToShow(context);
    final type = error.typeAlertToShow();

    await showGenericAlert(
      context,
      title: title,
      description: description,
      type: type,
    );
  }
}
