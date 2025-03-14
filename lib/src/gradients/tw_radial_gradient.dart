import 'package:flutter/painting.dart';
import 'package:flutter_tailwind_css_colors/src/gradients/tw_gradient.dart';

final class TwRadialGradient extends TwGradient {
  final AlignmentGeometry center;
  final double radius;
  final AlignmentGeometry? focal;
  final double focalRadius;

  const TwRadialGradient({
    required super.colors,
    this.center = Alignment.center,
    this.radius = 0.5,
    this.focal,
    this.focalRadius = 0.0,
    super.transform,
    super.tileMode,
  });

  @override
  Gradient toNative() => RadialGradient(
        center: center,
        radius: radius,
        focal: focal,
        focalRadius: focalRadius,
        colors: colors.map((e) => e.color).toList(),
        stops: colors.map((e) => e.stop).toList(),
        transform: transform,
        tileMode: tileMode,
      );
}
