import 'package:flutter/material.dart';
import 'package:flutter_tailwind_css_colors/flutter_tailwind_css_colors.dart';

void main() {
  runApp(const Example());
}

class Example extends StatefulWidget {
  const Example({super.key});

  @override
  State<Example> createState() => _ExampleState();
}

class _ExampleState extends State<Example> {
  ThemeMode themeMode = ThemeMode.light;

  @override
  Widget build(BuildContext context) {
    Color backgroundColorDark = TwColors.gray.i900;
    Color backgroundColorLight = Colors.white;
    Color appBarColorDark = TwColors.purple.i500;
    Color appBarColorLight = TwColors.orange.i500;
    Color gradientColorDark = TwColors.blue.i800;
    Color gradientColorLight = TwColors.green.i800;
    Color gradientColor2Dark = TwColors.blue.i600;
    Color gradientColor2Light = TwColors.emerald.i600;
    Color gradientColor3Dark = TwColors.blue.i400;
    Color gradientColor3Light = TwColors.emerald.i400;

    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: TwTheme(
        themeMode: themeMode,
        child: TwThemeBuilder5(
            darkValue: backgroundColorDark,
            value: backgroundColorLight,
            darkValue2: appBarColorDark,
            value2: appBarColorLight,
            darkValue3: gradientColorDark,
            value3: gradientColorLight,
            darkValue4: gradientColor2Dark,
            value4: gradientColor2Light,
            darkValue5: gradientColor3Dark,
            value5: gradientColor3Light,
            builder: (
              context,
              color,
              color2,
              color3,
              color4,
              color5,
            ) =>
                Scaffold(
                  backgroundColor: color,
                  appBar: AppBar(
                    backgroundColor: color2,
                    title: Text('Example'),
                  ),
                  body: Center(
                    child: Column(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: [
                        Switch(
                          value: themeMode == ThemeMode.light ? true : false,
                          onChanged: (bool value) {
                            setState(() {
                              themeMode =
                                  value ? ThemeMode.light : ThemeMode.dark;
                            });
                          },
                          activeColor: appBarColorLight,
                          inactiveTrackColor: appBarColorDark,
                        ),
                        const SizedBox(height: 20),
                        Container(
                          width: 440,
                          height: 220,
                          decoration: BoxDecoration(
                            gradient: TwLinearGradient(
                              colors: [
                                TwGradientColor(
                                  stop: 0.2,
                                  color: color3,
                                ),
                                TwGradientColor(
                                  stop: 0.8,
                                  color: color4,
                                ),
                                TwGradientColor(
                                  stop: 1.0,
                                  color: color5,
                                ),
                              ],
                            ).toNative(),
                          ),
                        ),
                      ],
                    ),
                  ),
                )),
      ),
    );
  }
}
