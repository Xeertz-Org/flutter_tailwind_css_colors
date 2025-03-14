import 'dart:math' as math;

import 'package:flutter/painting.dart';
import 'package:flutter_tailwind_css_colors/src/gradients/tw_gradient.dart';

final class TwConicGradient extends TwGradient {
  final AlignmentGeometry center;
  final double startAngle;
  final double endAngle;

  const TwConicGradient({
    required super.colors,
    this.center = Alignment.center,
    this.startAngle = 0.0,
    this.endAngle = math.pi * 2,
    super.transform,
  });

  @override
  Gradient toNative() => SweepGradient(
        center: center,
        startAngle: startAngle,
        endAngle: endAngle,
        colors: colors.map((e) => e.color).toList(),
        stops: colors.map((e) => e.stop).toList(),
        transform: transform,
        tileMode: tileMode,
      );
}
