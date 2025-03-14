import 'package:flutter/material.dart';
import 'package:flutter_tailwind_css_colors/src/theme/provider/tw_theme_notifier.dart';
import 'package:flutter_tailwind_css_colors/src/theme/provider/tw_theme_provider.dart';
import 'package:flutter_tailwind_css_colors/src/utils/utils.dart';

class TwThemeBuilder extends StatelessWidget {
  final Color darkValue;
  final Color value;
  final Widget Function(BuildContext context, Color color) builder;

  const TwThemeBuilder({
    super.key,
    required this.darkValue,
    required this.value,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    TwThemeNotifier notifier = TwThemeProvider.of(context);
    ThemeMode systemTheme = MediaQuery.of(context).theme;

    return builder(
      context,
      TwThemeBuilderUtils.getThemeColor(
        userTheme: notifier.value,
        systemTheme: systemTheme,
        light: value,
        dark: darkValue,
      ),
    );
  }
}

class TwThemeBuilder2 extends StatelessWidget {
  final Color darkValue;
  final Color darkValue2;
  final Color value;
  final Color value2;
  final Widget Function(
    BuildContext context,
    Color color,
    Color color2,
  ) builder;

  const TwThemeBuilder2({
    super.key,
    required this.darkValue,
    required this.darkValue2,
    required this.value,
    required this.value2,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    TwThemeNotifier notifier = TwThemeProvider.of(context);
    ThemeMode systemTheme = MediaQuery.of(context).theme;

    return builder(
      context,
      TwThemeBuilderUtils.getThemeColor(
        userTheme: notifier.value,
        systemTheme: systemTheme,
        light: value,
        dark: darkValue,
      ),
      TwThemeBuilderUtils.getThemeColor(
        userTheme: notifier.value,
        systemTheme: systemTheme,
        light: value2,
        dark: darkValue2,
      ),
    );
  }
}

class TwThemeBuilder3 extends StatelessWidget {
  final Color darkValue;
  final Color darkValue2;
  final Color darkValue3;
  final Color value;
  final Color value2;
  final Color value3;
  final Widget Function(
    BuildContext context,
    Color color,
    Color color2,
    Color color3,
  ) builder;

  const TwThemeBuilder3({
    super.key,
    required this.darkValue,
    required this.darkValue2,
    required this.darkValue3,
    required this.value,
    required this.value2,
    required this.value3,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    TwThemeNotifier notifier = TwThemeProvider.of(context);
    ThemeMode systemTheme = MediaQuery.of(context).theme;

    return builder(
      context,
      TwThemeBuilderUtils.getThemeColor(
        userTheme: notifier.value,
        systemTheme: systemTheme,
        light: value,
        dark: darkValue,
      ),
      TwThemeBuilderUtils.getThemeColor(
        userTheme: notifier.value,
        systemTheme: systemTheme,
        light: value2,
        dark: darkValue2,
      ),
      TwThemeBuilderUtils.getThemeColor(
        userTheme: notifier.value,
        systemTheme: systemTheme,
        light: value3,
        dark: darkValue3,
      ),
    );
  }
}

class TwThemeBuilder4 extends StatelessWidget {
  final Color darkValue;
  final Color darkValue2;
  final Color darkValue3;
  final Color darkValue4;
  final Color value;
  final Color value2;
  final Color value3;
  final Color value4;
  final Widget Function(
    BuildContext context,
    Color color,
    Color color2,
    Color color3,
    Color color4,
  ) builder;

  const TwThemeBuilder4({
    super.key,
    required this.darkValue,
    required this.darkValue2,
    required this.darkValue3,
    required this.darkValue4,
    required this.value,
    required this.value2,
    required this.value3,
    required this.value4,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    TwThemeNotifier notifier = TwThemeProvider.of(context);
    ThemeMode systemTheme = MediaQuery.of(context).theme;

    return builder(
      context,
      TwThemeBuilderUtils.getThemeColor(
        userTheme: notifier.value,
        systemTheme: systemTheme,
        light: value,
        dark: darkValue,
      ),
      TwThemeBuilderUtils.getThemeColor(
        userTheme: notifier.value,
        systemTheme: systemTheme,
        light: value2,
        dark: darkValue2,
      ),
      TwThemeBuilderUtils.getThemeColor(
        userTheme: notifier.value,
        systemTheme: systemTheme,
        light: value3,
        dark: darkValue3,
      ),
      TwThemeBuilderUtils.getThemeColor(
        userTheme: notifier.value,
        systemTheme: systemTheme,
        light: value4,
        dark: darkValue4,
      ),
    );
  }
}

class TwThemeBuilder5 extends StatelessWidget {
  final Color darkValue;
  final Color darkValue2;
  final Color darkValue3;
  final Color darkValue4;
  final Color darkValue5;
  final Color value;
  final Color value2;
  final Color value3;
  final Color value4;
  final Color value5;
  final Widget Function(
    BuildContext context,
    Color color,
    Color color2,
    Color color3,
    Color color4,
    Color color5,
  ) builder;

  const TwThemeBuilder5({
    super.key,
    required this.darkValue,
    required this.darkValue2,
    required this.darkValue3,
    required this.darkValue4,
    required this.darkValue5,
    required this.value,
    required this.value2,
    required this.value3,
    required this.value4,
    required this.value5,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    TwThemeNotifier notifier = TwThemeProvider.of(context);
    ThemeMode systemTheme = MediaQuery.of(context).theme;

    return builder(
      context,
      TwThemeBuilderUtils.getThemeColor(
        userTheme: notifier.value,
        systemTheme: systemTheme,
        light: value,
        dark: darkValue,
      ),
      TwThemeBuilderUtils.getThemeColor(
        userTheme: notifier.value,
        systemTheme: systemTheme,
        light: value2,
        dark: darkValue2,
      ),
      TwThemeBuilderUtils.getThemeColor(
        userTheme: notifier.value,
        systemTheme: systemTheme,
        light: value3,
        dark: darkValue3,
      ),
      TwThemeBuilderUtils.getThemeColor(
        userTheme: notifier.value,
        systemTheme: systemTheme,
        light: value4,
        dark: darkValue4,
      ),
      TwThemeBuilderUtils.getThemeColor(
        userTheme: notifier.value,
        systemTheme: systemTheme,
        light: value5,
        dark: darkValue5,
      ),
    );
  }
}

class TwThemeBuilder6 extends StatelessWidget {
  final Color darkValue;
  final Color darkValue2;
  final Color darkValue3;
  final Color darkValue4;
  final Color darkValue5;
  final Color darkValue6;
  final Color value;
  final Color value2;
  final Color value3;
  final Color value4;
  final Color value5;
  final Color value6;
  final Widget Function(
    BuildContext context,
    Color color,
    Color color2,
    Color color3,
    Color color4,
    Color color5,
    Color color6,
  ) builder;

  const TwThemeBuilder6({
    super.key,
    required this.darkValue,
    required this.darkValue2,
    required this.darkValue3,
    required this.darkValue4,
    required this.darkValue5,
    required this.darkValue6,
    required this.value,
    required this.value2,
    required this.value3,
    required this.value4,
    required this.value5,
    required this.value6,
    required this.builder,
  });

  @override
  Widget build(BuildContext context) {
    TwThemeNotifier notifier = TwThemeProvider.of(context);
    ThemeMode systemTheme = MediaQuery.of(context).theme;

    return builder(
      context,
      TwThemeBuilderUtils.getThemeColor(
        userTheme: notifier.value,
        systemTheme: systemTheme,
        light: value,
        dark: darkValue,
      ),
      TwThemeBuilderUtils.getThemeColor(
        userTheme: notifier.value,
        systemTheme: systemTheme,
        light: value2,
        dark: darkValue2,
      ),
      TwThemeBuilderUtils.getThemeColor(
        userTheme: notifier.value,
        systemTheme: systemTheme,
        light: value3,
        dark: darkValue3,
      ),
      TwThemeBuilderUtils.getThemeColor(
        userTheme: notifier.value,
        systemTheme: systemTheme,
        light: value4,
        dark: darkValue4,
      ),
      TwThemeBuilderUtils.getThemeColor(
        userTheme: notifier.value,
        systemTheme: systemTheme,
        light: value5,
        dark: darkValue5,
      ),
      TwThemeBuilderUtils.getThemeColor(
        userTheme: notifier.value,
        systemTheme: systemTheme,
        light: value6,
        dark: darkValue6,
      ),
    );
  }
}
