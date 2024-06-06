import 'dart:async';

import 'package:flutter/material.dart';
import 'package:golden_toolkit/golden_toolkit.dart';

Future<void> testExecutable(FutureOr<void> Function() testMain) async {
  return GoldenToolkit.runWithConfiguration(
    () async {
      await loadAppFonts();
      await testMain();
    },
    config: GoldenToolkitConfiguration(
      enableRealShadows: true,
      defaultDevices: const [
        Device.phone,
        Device(
          size: Size(360, 780),
          name: 'iPhone 13 Mini',
        ),
        Device(
          size: Size(420, 900),
          name: 'Xiaomi Note 8',
        ),
      ],
    ),
  );
}
