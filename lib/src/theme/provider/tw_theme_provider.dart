import 'package:flutter/material.dart';
import 'package:flutter_tailwind_css_colors/src/theme/provider/tw_theme_notifier.dart';

class TwThemeProvider extends InheritedNotifier<TwThemeNotifier> {
  const TwThemeProvider({
    super.key,
    required super.notifier,
    required super.child,
  });

  static TwThemeNotifier of(BuildContext context) {
    final provider =
        context.dependOnInheritedWidgetOfExactType<TwThemeProvider>();

    if (provider == null) {
      throw Exception("No TwThemeProvider found in context");
    }

    final notifier = provider.notifier;

    if (notifier == null) {
      throw Exception("No notifier found in TwThemeProvider");
    }

    return notifier;
  }
}
