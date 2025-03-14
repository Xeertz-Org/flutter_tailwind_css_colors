import 'dart:ui';

import 'package:equatable/equatable.dart';
import 'package:flutter_tailwind_css_colors/src/colors/palettes/amber_palette.dart';
import 'package:flutter_tailwind_css_colors/src/colors/palettes/blue_palette.dart';
import 'package:flutter_tailwind_css_colors/src/colors/palettes/cyan_palette.dart';
import 'package:flutter_tailwind_css_colors/src/colors/palettes/emerald_palette.dart';
import 'package:flutter_tailwind_css_colors/src/colors/palettes/fuchsia_palette.dart';
import 'package:flutter_tailwind_css_colors/src/colors/palettes/gray_palette.dart';
import 'package:flutter_tailwind_css_colors/src/colors/palettes/green_palette.dart';
import 'package:flutter_tailwind_css_colors/src/colors/palettes/indigo_palette.dart';
import 'package:flutter_tailwind_css_colors/src/colors/palettes/lime_palette.dart';
import 'package:flutter_tailwind_css_colors/src/colors/palettes/neutral_palette.dart';
import 'package:flutter_tailwind_css_colors/src/colors/palettes/orange_palette.dart';
import 'package:flutter_tailwind_css_colors/src/colors/palettes/pink_palette.dart';
import 'package:flutter_tailwind_css_colors/src/colors/palettes/purple_palette.dart';
import 'package:flutter_tailwind_css_colors/src/colors/palettes/red_palette.dart';
import 'package:flutter_tailwind_css_colors/src/colors/palettes/rose_palette.dart';
import 'package:flutter_tailwind_css_colors/src/colors/palettes/sky_palette.dart';
import 'package:flutter_tailwind_css_colors/src/colors/palettes/slate_palette.dart';
import 'package:flutter_tailwind_css_colors/src/colors/palettes/stone_palette.dart';
import 'package:flutter_tailwind_css_colors/src/colors/palettes/teal_palette.dart';
import 'package:flutter_tailwind_css_colors/src/colors/palettes/violet_palette.dart';
import 'package:flutter_tailwind_css_colors/src/colors/palettes/yellow_palette.dart';
import 'package:flutter_tailwind_css_colors/src/colors/palettes/zinc_palette.dart';

enum TwIntensity {
  i50,
  i100,
  i200,
  i300,
  i400,
  i500,
  i600,
  i700,
  i800,
  i900,
  i950;
}

sealed class TwColor extends Equatable {
  final Map<TwIntensity, Color> _palette;

  const TwColor(this._palette);

  Color get i50 => _palette[TwIntensity.i50]!;

  Color get i100 => _palette[TwIntensity.i100]!;

  Color get i200 => _palette[TwIntensity.i200]!;

  Color get i300 => _palette[TwIntensity.i300]!;

  Color get i400 => _palette[TwIntensity.i400]!;

  Color get i500 => _palette[TwIntensity.i500]!;

  Color get i600 => _palette[TwIntensity.i600]!;

  Color get i700 => _palette[TwIntensity.i700]!;

  Color get i800 => _palette[TwIntensity.i800]!;

  Color get i900 => _palette[TwIntensity.i900]!;

  Color get i950 => _palette[TwIntensity.i950]!;

  @override
  List<Object?> get props => [_palette];
}

final class TwAmber extends TwColor {
  TwAmber() : super(amberPalette);
}

final class TwBlue extends TwColor {
  TwBlue() : super(bluePalette);
}

final class TwCyan extends TwColor {
  TwCyan() : super(cyanPalette);
}

final class TwEmerald extends TwColor {
  TwEmerald() : super(emeraldPalette);
}

final class TwFuchsia extends TwColor {
  TwFuchsia() : super(fuchsiaPalette);
}

final class TwGray extends TwColor {
  TwGray() : super(grayPalette);
}

final class TwGreen extends TwColor {
  TwGreen() : super(greenPalette);
}

final class TwIndigo extends TwColor {
  TwIndigo() : super(indigoPalette);
}

final class TwLime extends TwColor {
  TwLime() : super(limePalette);
}

final class TwNeutral extends TwColor {
  TwNeutral() : super(neutralPalette);
}

final class TwOrange extends TwColor {
  TwOrange() : super(orangePalette);
}

final class TwPink extends TwColor {
  TwPink() : super(pinkPalette);
}

final class TwPurple extends TwColor {
  TwPurple() : super(purplePalette);
}

final class TwRed extends TwColor {
  TwRed() : super(redPalette);
}

final class TwRose extends TwColor {
  TwRose() : super(rosePalette);
}

final class TwSky extends TwColor {
  TwSky() : super(skyPalette);
}

final class TwSlate extends TwColor {
  TwSlate() : super(slatePalette);
}

final class TwStone extends TwColor {
  TwStone() : super(stonePalette);
}

final class TwTeal extends TwColor {
  TwTeal() : super(tealPalette);
}

final class TwViolet extends TwColor {
  TwViolet() : super(violetPalette);
}

final class TwYellow extends TwColor {
  TwYellow() : super(yellowPalette);
}

final class TwZinc extends TwColor {
  TwZinc() : super(zincPalette);
}
