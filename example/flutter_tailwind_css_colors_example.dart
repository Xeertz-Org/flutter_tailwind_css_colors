import 'package:flutter/material.dart';
import 'package:flutter_tailwind_css_colors/flutter_tailwind_css_colors.dart';

class Example extends StatelessWidget {
  const Example({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: TWColors.orange.i500,
      ),
    );
  }
}
