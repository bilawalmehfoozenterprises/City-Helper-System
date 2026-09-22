import 'package:app/src/core/utils/font_family_provider.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'color.dart';

part 'light_theme.g.dart';

@riverpod
ThemeData lightTheme(Ref ref) {
  final fontFamily = ref.watch(fontFamilyProvider);
  final themeData = ThemeData.light(useMaterial3: true);
  final colorScheme =
      ColorScheme.fromSeed(
        seedColor: kCharcoalColor,
        brightness: Brightness.light,
      ).copyWith(
        primary: kCharcoalColor,
        onPrimary: kWhiteColor,
        secondary: kAmberColor,
        onSecondary: kBlackColor,
        surface: kWhiteColor,
        surfaceContainerLowest: kCanvasColor,
        surfaceContainerLow: kCanvasColor,
        surfaceContainer: kLightGreyColor,
        onSurface: kBlackColor,
        onSurfaceVariant: kDarkGreyColor,
        outline: lightGreyColor,
        error: kRedColor,
      );

  return themeData.copyWith(
    colorScheme: colorScheme,
    scaffoldBackgroundColor: kCanvasColor,
    dividerColor: lightGreyColor,
    textTheme: _textThemeLight(themeData, fontFamily),
    appBarTheme: const AppBarTheme(
      backgroundColor: kCanvasColor,
      foregroundColor: kBlackColor,
      elevation: 0,
      centerTitle: false,
    ),
    cardTheme: CardThemeData(
      color: kWhiteColor,
      elevation: 0,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
        side: const BorderSide(color: lightGreyColor),
      ),
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: kWhiteColor,
      border: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: lightGreyColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: lightGreyColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: BorderRadius.circular(12),
        borderSide: const BorderSide(color: kCharcoalColor, width: 1.5),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: kCharcoalColor,
        foregroundColor: kWhiteColor,
        elevation: 0,
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        minimumSize: const Size(48, 48),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: kCharcoalColor,
        side: const BorderSide(color: lightGreyColor),
        shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(12)),
        minimumSize: const Size(48, 48),
      ),
    ),
  );
}

TextTheme _textThemeLight(ThemeData themeData, String fontFamily) {
  final textTheme = themeData.textTheme;
  TextStyle? grey(TextStyle? style) => style?.copyWith(color: kDarkGreyColor);

  return textTheme
      .copyWith(
        displayLarge: textTheme.displayLarge?.copyWith(
          color: kBlackColor,
          fontWeight: FontWeight.w700,
          letterSpacing: -1.2,
        ),
        headlineLarge: textTheme.headlineLarge?.copyWith(
          color: kBlackColor,
          fontWeight: FontWeight.w700,
          letterSpacing: -0.6,
        ),
        titleLarge: textTheme.titleLarge?.copyWith(
          color: kBlackColor,
          fontWeight: FontWeight.w700,
        ),
        bodyLarge: textTheme.bodyLarge?.copyWith(color: kBlackColor),
        labelLarge: grey(textTheme.labelLarge),
        labelMedium: grey(textTheme.labelMedium),
        labelSmall: grey(textTheme.labelSmall),
      )
      .apply(fontFamily: fontFamily);
}
