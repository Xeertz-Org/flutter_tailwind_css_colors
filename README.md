# flutter_tailwind_css_colors

A pure Dart implementation around Tailwind CSS colors framework.

Link to all colors: [Tailwind CSS Colors](https://tailwindcss.com/docs/customizing-colors)

## Description

`flutter_tailwind_css_colors` provides a comprehensive set of utilities to work with Tailwind CSS colors framework in Flutter
applications. It includes predefined color classes, gradient utilities, and theme builders to easily integrate Tailwind
CSS color schemes into your Flutter projects.

## Usage

### Colors

The `TwColors` class provides access to all Tailwind CSS colors. Each color is represented as a `TwColor` class with
different intensity levels.

```dart
import 'package:flutter_tailwind_css_colors/flutter_tailwind_css_colors.dart';

Color primaryColor = TwColors.blue.i500;
Color secondaryColor = TwColors.green.i300;
```

### Gradients

The `TwGradient` class allows you to create various types of gradients using Tailwind CSS colors. Below are the different types of gradients supported.

#### Linear Gradient

```dart
import 'package:flutter_tailwind_css_colors/flutter_tailwind_css_colors.dart';

BoxDecoration boxDecoration = BoxDecoration(
  gradient: TwLinearGradient(
    colors: [
      TwGradientColor(stop: 0.0, color: TwColors.blue.i500),
      TwGradientColor(stop: 1.0, color: TwColors.green.i500),
    ],
  ).toNative(),
);
```
#### Radial Gradient

```dart
import 'package:flutter_tailwind_css_colors/flutter_tailwind_css_colors.dart';

BoxDecoration boxDecoration = BoxDecoration(
  gradient: TwRadialGradient(
    colors: [
      TwGradientColor(stop: 0.0, color: TwColors.red.i500),
      TwGradientColor(stop: 1.0, color: TwColors.yellow.i500),
    ],
  ).toNative(),
);
```

#### Conic Gradient

```dart
import 'package:flutter_tailwind_css_colors/flutter_tailwind_css_colors.dart';

BoxDecoration boxDecoration = BoxDecoration(
  gradient: TwConicGradient(
    colors: [
      TwGradientColor(stop: 0.0, color: TwColors.purple.i500),
      TwGradientColor(stop: 1.0, color: TwColors.pink.i500),
    ],
  ).toNative(),
);
```

### Themes

The `TwTheme` and `TwThemeBuilder` classes help you manage light and dark themes in your Flutter application.

```dart
import 'package:flutter_tailwind_css_colors/flutter_tailwind_css_colors.dart';

Widget widget = MaterialApp(
      home: TwTheme(
        themeMode: ThemeMode.system,
        child: TwThemeBuilder(
          darkValue: TwColors.gray.i900,
          value: Colors.white,
          builder: (context, color) => Scaffold(
            backgroundColor: color,
            appBar: AppBar(
              title: Text('TwTheme Example'),
            ),
            body: Center(
              child: Text('Hello, World!'),
            ),
          ),
        ),
      ),
    );
```
#### Advanced theme builders
For more complex themes, you can use `TwThemeBuilder2`, `TwThemeBuilder3`, etc., to manage multiple colors.

```dart
import 'package:flutter_tailwind_css_colors/flutter_tailwind_css_colors.dart';

Widget widget = TwThemeBuilder3
  (
  darkValue: TwColors.gray.i900,
  value: Colors.white,
  darkValue2: TwColors.blue.i800,
  value2: TwColors.green.i800,
  darkValue3: TwColors.blue.i600,
  value3: TwColors.green.i600,
  builder: (context, color, color2, color3) =>
      Scaffold(
        backgroundColor: color,
        appBar: AppBar(
          backgroundColor: color2,
          title: Text('Advanced Theme Example'),
        ),
        body: Center(
          child: Container(
            width: 200,
            height: 200,
            decoration: BoxDecoration(
              gradient: TwLinearGradient(
                colors: [
                  TwGradientColor(stop: 0.0, color: color2),
                  TwGradientColor(stop: 1.0, color: color3),
                ],
              ).toNative(),
            ),
          )
          ,
        )
        ,
      )
  ,
);
```

## Issues and feedback
Please report any issue, bug or feature request in our [issue tracker](https://github.com/Xeertz-Org/flutter_tailwind_css_colors/issues)