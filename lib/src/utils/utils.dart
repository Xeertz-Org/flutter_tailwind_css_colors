import 'package:flutter/material.dart';

extension MediaQueryExtension on MediaQueryData {
  ThemeMode get theme {
    return platformBrightness == Brightness.dark
        ? ThemeMode.dark
        : ThemeMode.light;
  }
}

abstract class TwThemeBuilderUtils {
  static Color getThemeColor({
    required ThemeMode userTheme,
    required ThemeMode systemTheme,
    required Color dark,
    required Color light,
  }) {
    switch (userTheme) {
      case ThemeMode.system:
        return systemTheme == ThemeMode.dark ? dark : light;
      case ThemeMode.dark:
        return dark;
      case ThemeMode.light:
        return light;
    }
  }
}
