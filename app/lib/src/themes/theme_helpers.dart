import 'package:flutter/material.dart';
import 'package:app/src/core/constants/app_sizes.dart';

class ThemeHelpers {
  ThemeHelpers._();

  static const surfaceRadius = Sizes.p12;
  static const pillRadius = 999.0;

  static Radius surfaceCorner() => Radius.circular(surfaceRadius);

  static BorderRadius surfaceBorderRadius() =>
      BorderRadius.all(surfaceCorner());

  static BorderRadius sheetBorderRadius() =>
      BorderRadius.vertical(top: surfaceCorner());

  static BorderRadius pillBorderRadius() =>
      BorderRadius.all(Radius.circular(pillRadius));
}
