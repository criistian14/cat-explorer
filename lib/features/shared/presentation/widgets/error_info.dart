import 'package:cat_explorer/config/app_assets.dart';
import 'package:cat_explorer/features/shared/shared.dart';
import 'package:cat_explorer/l10n/l10n.dart';
import 'package:flutter/material.dart';
import 'package:rive/rive.dart';

class ErrorInfo extends StatelessWidget {
  const ErrorInfo({
    super.key,
    this.title,
    this.message,
    required this.onRetry,
  });

  final String? title;
  final String? message;
  final VoidCallback onRetry;

  @override
  Widget build(BuildContext context) {
    final l10n = context.l10n;
    final textTheme = Theme.of(context).textTheme;

    return Center(
      child: Stack(
        fit: StackFit.expand,
        children: [
          // * Animation
          Positioned(
            top: 10.h(context),
            left: 0,
            right: 0,
            child: SizedBox(
              height: 60.h(context),
              child: RiveAnimation.asset(
                AppAssets.animationErrorFound,
                fit: BoxFit.cover,
              ),
            ),
          ),

          // * Info
          Positioned(
            bottom: 0,
            top: 60.h(context),
            left: 5.w(context),
            right: 5.w(context),
            child: Column(
              mainAxisSize: MainAxisSize.min,
              children: [
                Text(
                  title ?? 'Oops!',
                  style: textTheme.displayLarge,
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 1.h(context)),
                Text(
                  message ?? l10n.description_failure,
                  style: textTheme.headlineMedium?.copyWith(
                    fontWeight: FontWeight.w500,
                  ),
                  textAlign: TextAlign.center,
                ),
                SizedBox(height: 4.h(context)),

                // * Retry button
                SizedBox(
                  width: 50.w(context),
                  child: FilledButton(
                    onPressed: onRetry,
                    child: Text(
                      l10n.retry_button,
                    ),
                  ),
                ),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
