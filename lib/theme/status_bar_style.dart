import 'package:flutter/material.dart';
import 'package:flutter/services.dart';

class StatusBarStyle {
  static SystemUiOverlayStyle lightStatusBarForDarkerScreens() {
    return const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      // statusBarIconBrightness: Brightness,
      statusBarBrightness: Brightness.dark,
    );
  }

  static SystemUiOverlayStyle darkStatusBarForBrighterScreens() {
    return const SystemUiOverlayStyle(
      statusBarColor: Colors.transparent,
      // statusBarIconBrightness: Brightness,
      statusBarBrightness: Brightness.light,
    );
  }
}
