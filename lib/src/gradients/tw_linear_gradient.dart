import 'package:flutter/painting.dart';
import 'package:flutter_tailwind_css_colors/src/gradients/tw_gradient.dart';

/// A class that represents a Tailwind CSS linear gradient.
final class TwLinearGradient extends TwGradient {
  /// An [AlignmentGeometry] object defining the starting point of the gradient.
  /// The default is [Alignment.centerLeft].
  final AlignmentGeometry begin;

  /// An [AlignmentGeometry] object defining the ending point of the gradient.
  /// The default is [Alignment.centerRight].
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
