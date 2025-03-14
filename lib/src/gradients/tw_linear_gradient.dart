import 'package:flutter/painting.dart';
import 'package:flutter_tailwind_css_colors/src/gradients/tw_gradient.dart';

final class TwLinearGradient extends TwGradient {
  final AlignmentGeometry begin;
  final AlignmentGeometry end;

  const TwLinearGradient({
    required super.colors,
    this.begin = Alignment.centerLeft,
    this.end = Alignment.centerRight,
    super.transform,
    super.tileMode,
  });

  @override
  Gradient toNative() => LinearGradient(
        begin: begin,
        end: end,
        colors: colors.map((e) => e.color).toList(),
        stops: colors.map((e) => e.stop).toList(),
        transform: transform,
        tileMode: tileMode,
      );
}
