import 'package:flutter/material.dart';

class TwThemeNotifier extends ValueNotifier<ThemeMode> {
  TwThemeNotifier(super.value);

  void setThemeMode(ThemeMode mode) => value = mode;
}
