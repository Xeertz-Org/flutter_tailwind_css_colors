import 'package:equatable/equatable.dart';
import 'package:flutter/painting.dart';

/// A class representing a color stop in a gradient.
final class TwGradientColor extends Equatable {
  /// The position of the color stop in the gradient.
  /// A value between 0.0 and 1.0.
  final double stop;

  /// The color of the color stop.
  final Color color;

  const TwGradientColor({
    required this.stop,
    required this.color,
  });

  @override
  List<Object?> get props => [
        stop,
        color,
      ];
}

/// An abstract class representing a Tailwind CSS gradient.
abstract class TwGradient {
  /// A list of [TwGradientColor] objects defining the gradient colors and their stops.
  /// The order of the list is important as each object represents both a color
  /// and its stop position in the gradient.
  final List<TwGradientColor> colors;

  /// An optional [GradientTransform] object to apply a transformation to the gradient.
  final GradientTransform? transform;

  /// A [TileMode] object defining how the gradient should tile the plane beyond the gradient bounds.
  final TileMode tileMode;

  const TwGradient({
    required this.colors,
    this.transform,
    this.tileMode = TileMode.clamp,
  });

  Gradient toNative();
}
