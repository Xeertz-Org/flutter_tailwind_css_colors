import 'package:flutter/painting.dart';
import 'package:flutter_tailwind_css_colors/src/gradients/tw_gradient.dart';

/// A class that represents a Tailwind CSS radial gradient.
final class TwRadialGradient extends TwGradient {
  /// An [AlignmentGeometry] object defining the center of the gradient. The default is [Alignment.center]
  final AlignmentGeometry center;

  /// A double value defining the radius of the gradient. The default is 0.5.
  final double radius;

  /// An optional [AlignmentGeometry] object defining the focal point of the gradient.
  final AlignmentGeometry? focal;

  /// A double value defining the radius of the focal point. The default is 0.0.
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
