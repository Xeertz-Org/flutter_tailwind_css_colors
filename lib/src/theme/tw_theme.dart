import 'package:flutter/material.dart';
import 'package:flutter_tailwind_css_colors/src/theme/provider/tw_theme_notifier.dart';
import 'package:flutter_tailwind_css_colors/src/theme/provider/tw_theme_provider.dart';

/// A widget that provides theme management for its child widget.
class TwTheme extends StatefulWidget {
  /// The selected theme mode.
  final ThemeMode themeMode;

  /// The child widget that will be affected by the theme.
  final Widget child;

  const TwTheme({
    super.key,
    required this.child,
    required this.themeMode,
  });

  @override
  State<TwTheme> createState() => _TwThemeState();
}

class _TwThemeState extends State<TwTheme> {
  late final TwThemeNotifier _notifier;

  @override
  void initState() {
    super.initState();
    _notifier = TwThemeNotifier(widget.themeMode);
  }

  @override
  void didUpdateWidget(covariant TwTheme oldWidget) {
    if (oldWidget.themeMode != widget.themeMode) {
      _notifier.setThemeMode(widget.themeMode);
    }
    super.didUpdateWidget(oldWidget);
  }

  @override
  Widget build(BuildContext context) => TwThemeProvider(
        notifier: _notifier,
        child: widget.child,
      );
}
