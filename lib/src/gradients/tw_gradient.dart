import 'package:equatable/equatable.dart';
import 'package:flutter/painting.dart';

final class TwGradientColor extends Equatable {
  final double stop;
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

abstract class TwGradient {
  final List<TwGradientColor> colors;
  final GradientTransform? transform;
  final TileMode tileMode;

  const TwGradient({
    required this.colors,
    this.transform,
    this.tileMode = TileMode.clamp,
  });

  Gradient toNative();
}
