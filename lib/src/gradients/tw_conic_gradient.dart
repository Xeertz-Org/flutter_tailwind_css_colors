import 'dart:math' as math;

import 'package:flutter/painting.dart';
import 'package:flutter_tailwind_css_colors/src/gradients/tw_gradient.dart';

/// A class that represents a Tailwind CSS conic gradient.
final class TwConicGradient extends TwGradient {
  /// An [AlignmentGeometry] object defining the center of the gradient. The default is [Alignment.center].
  final AlignmentGeometry center;

  /// A double value defining the starting angle of the gradient. The default is 0.0.
  final double startAngle;

  /// A double value defining the ending angle of the gradient. The default is math.pi * 2.
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
