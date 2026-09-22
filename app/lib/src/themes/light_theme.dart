import 'package:app/src/core/utils/font_family_provider.dart';
import 'package:app/src/core/constants/app_sizes.dart';
import 'package:flutter/material.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

import 'color.dart';
import 'theme_helpers.dart';

part 'light_theme.g.dart';

@riverpod
ThemeData lightTheme(Ref ref) {
  final fontFamily = ref.watch(fontFamilyProvider);
  final themeData = ThemeData.light(useMaterial3: true);
  final colorScheme = ColorScheme.light(
    primary: kCharcoalColor,
    onPrimary: kWhiteColor,
    primaryContainer: kCharcoalColor,
    onPrimaryContainer: kWhiteColor,
    secondary: kDarkGreyColor,
    onSecondary: kWhiteColor,
    secondaryContainer: kLightGreyColor,
    onSecondaryContainer: kBlackColor,
    surface: kWhiteColor,
    onSurface: kBlackColor,
    surfaceContainerLowest: kWhiteColor,
    surfaceContainerLow: kCanvasColor,
    surfaceContainer: kLightGreyColor,
    surfaceContainerHigh: kLightGreyColor,
    surfaceContainerHighest: lightGreyColor,
    onSurfaceVariant: kDarkGreyColor,
    outline: lightGreyColor,
    outlineVariant: kLightGreyColor,
    error: kRedColor,
    onError: kWhiteColor,
  );

  return themeData.copyWith(
    colorScheme: colorScheme,
    scaffoldBackgroundColor: kCanvasColor,
    dividerColor: lightGreyColor,
    splashColor: kLightGreyColor,
    highlightColor: kLightGreyColor,
    hoverColor: kLightGreyColor,
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
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: ThemeHelpers.surfaceBorderRadius(),
        side: const BorderSide(color: lightGreyColor),
      ),
    ),
    dialogTheme: DialogThemeData(
      backgroundColor: kWhiteColor,
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.black26,
      elevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: ThemeHelpers.surfaceBorderRadius(),
      ),
    ),
    bottomSheetTheme: BottomSheetThemeData(
      backgroundColor: kWhiteColor,
      modalBackgroundColor: kWhiteColor,
      surfaceTintColor: Colors.transparent,
      shadowColor: Colors.black26,
      elevation: 12,
      modalElevation: 12,
      shape: RoundedRectangleBorder(
        borderRadius: ThemeHelpers.sheetBorderRadius(),
      ),
      showDragHandle: true,
      dragHandleColor: kDarkGreyColor,
    ),
    inputDecorationTheme: InputDecorationTheme(
      filled: true,
      fillColor: kWhiteColor,
      labelStyle: const TextStyle(color: kDarkGreyColor),
      hintStyle: const TextStyle(color: darkGreyColor),
      prefixIconColor: kDarkGreyColor,
      suffixIconColor: kDarkGreyColor,
      contentPadding: const EdgeInsets.symmetric(
        horizontal: Sizes.p16,
        vertical: Sizes.p12,
      ),
      border: OutlineInputBorder(
        borderRadius: ThemeHelpers.surfaceBorderRadius(),
        borderSide: const BorderSide(color: lightGreyColor),
      ),
      enabledBorder: OutlineInputBorder(
        borderRadius: ThemeHelpers.surfaceBorderRadius(),
        borderSide: const BorderSide(color: lightGreyColor),
      ),
      focusedBorder: OutlineInputBorder(
        borderRadius: ThemeHelpers.surfaceBorderRadius(),
        borderSide: const BorderSide(color: kCharcoalColor, width: 1.5),
      ),
      errorBorder: OutlineInputBorder(
        borderRadius: ThemeHelpers.surfaceBorderRadius(),
        borderSide: const BorderSide(color: kRedColor),
      ),
      focusedErrorBorder: OutlineInputBorder(
        borderRadius: ThemeHelpers.surfaceBorderRadius(),
        borderSide: const BorderSide(color: kRedColor, width: 1.5),
      ),
    ),
    filledButtonTheme: FilledButtonThemeData(
      style: FilledButton.styleFrom(
        backgroundColor: kCharcoalColor,
        foregroundColor: kWhiteColor,
        elevation: 0,
        shape: RoundedRectangleBorder(
          borderRadius: ThemeHelpers.surfaceBorderRadius(),
        ),
        minimumSize: const Size(48, 48),
      ),
    ),
    elevatedButtonTheme: ElevatedButtonThemeData(
      style: ElevatedButton.styleFrom(
        backgroundColor: kWhiteColor,
        foregroundColor: kBlackColor,
        elevation: 1,
        shadowColor: Colors.black26,
        side: const BorderSide(color: lightGreyColor),
        shape: RoundedRectangleBorder(
          borderRadius: ThemeHelpers.surfaceBorderRadius(),
        ),
        minimumSize: const Size(48, 48),
      ),
    ),
    outlinedButtonTheme: OutlinedButtonThemeData(
      style: OutlinedButton.styleFrom(
        foregroundColor: kCharcoalColor,
        side: const BorderSide(color: lightGreyColor),
        shape: RoundedRectangleBorder(
          borderRadius: ThemeHelpers.surfaceBorderRadius(),
        ),
        minimumSize: const Size(48, 48),
      ),
    ),
    textButtonTheme: TextButtonThemeData(
      style: TextButton.styleFrom(
        foregroundColor: kCharcoalColor,
        overlayColor: kLightGreyColor,
        shape: RoundedRectangleBorder(
          borderRadius: ThemeHelpers.surfaceBorderRadius(),
        ),
      ),
    ),
    dividerTheme: const DividerThemeData(
      color: lightGreyColor,
      thickness: 1,
      space: 1,
    ),
    chipTheme: ChipThemeData(
      backgroundColor: kWhiteColor,
      selectedColor: kCharcoalColor,
      disabledColor: kLightGreyColor,
      secondarySelectedColor: kCharcoalColor,
      labelStyle: const TextStyle(color: kBlackColor),
      secondaryLabelStyle: const TextStyle(color: kWhiteColor),
      side: const BorderSide(color: lightGreyColor),
      shape: RoundedRectangleBorder(
        borderRadius: ThemeHelpers.pillBorderRadius(),
      ),
    ),
    checkboxTheme: CheckboxThemeData(
      fillColor: WidgetStateProperty.resolveWith(
        (states) => states.contains(WidgetState.selected)
            ? kCharcoalColor
            : kWhiteColor,
      ),
      checkColor: const WidgetStatePropertyAll(kWhiteColor),
      side: const BorderSide(color: kDarkGreyColor),
    ),
    radioTheme: const RadioThemeData(
      fillColor: WidgetStatePropertyAll(kCharcoalColor),
    ),
    switchTheme: const SwitchThemeData(
      thumbColor: WidgetStatePropertyAll(kWhiteColor),
      trackColor: WidgetStatePropertyAll(kLightGreyColor),
      trackOutlineColor: WidgetStatePropertyAll(lightGreyColor),
      overlayColor: WidgetStatePropertyAll(kLightGreyColor),
    ),
    sliderTheme: const SliderThemeData(
      activeTrackColor: kCharcoalColor,
      inactiveTrackColor: kLightGreyColor,
      thumbColor: kCharcoalColor,
      overlayColor: kLightGreyColor,
      valueIndicatorColor: kCharcoalColor,
      trackHeight: 4,
    ),
    progressIndicatorTheme: const ProgressIndicatorThemeData(
      color: kCharcoalColor,
      linearTrackColor: kLightGreyColor,
      circularTrackColor: kLightGreyColor,
    ),
    snackBarTheme: SnackBarThemeData(
      backgroundColor: kCharcoalColor,
      contentTextStyle: const TextStyle(color: kWhiteColor),
      actionTextColor: kWhiteColor,
      behavior: SnackBarBehavior.floating,
      shape: RoundedRectangleBorder(
        borderRadius: ThemeHelpers.surfaceBorderRadius(),
      ),
    ),
    popupMenuTheme: PopupMenuThemeData(
      color: kWhiteColor,
      surfaceTintColor: Colors.transparent,
      shape: RoundedRectangleBorder(
        borderRadius: ThemeHelpers.surfaceBorderRadius(),
        side: const BorderSide(color: lightGreyColor),
      ),
    ),
    tooltipTheme: TooltipThemeData(
      decoration: BoxDecoration(
        color: kCharcoalColor,
        borderRadius: ThemeHelpers.surfaceBorderRadius(),
      ),
      textStyle: const TextStyle(color: kWhiteColor),
    ),
    navigationBarTheme: const NavigationBarThemeData(
      backgroundColor: kWhiteColor,
      surfaceTintColor: Colors.transparent,
      indicatorColor: kCharcoalColor,
      elevation: 0,
      shadowColor: Colors.transparent,
    ),
  );
}

TextTheme _textThemeLight(ThemeData themeData, String fontFamily) {
  final textTheme = themeData.textTheme.apply(fontFamily: fontFamily);

  return textTheme.copyWith(
    displayLarge: textTheme.displayLarge?.copyWith(
      color: kBlackColor,
      fontSize: 57,
      fontWeight: FontWeight.w800,
      height: 1.02,
      letterSpacing: -2.2,
    ),
    displayMedium: textTheme.displayMedium?.copyWith(
      color: kBlackColor,
      fontSize: 45,
      fontWeight: FontWeight.w800,
      height: 1.05,
      letterSpacing: -1.6,
    ),
    displaySmall: textTheme.displaySmall?.copyWith(
      color: kBlackColor,
      fontSize: 36,
      fontWeight: FontWeight.w800,
      height: 1.08,
      letterSpacing: -1.1,
    ),
    headlineLarge: textTheme.headlineLarge?.copyWith(
      color: kBlackColor,
      fontSize: 32,
      fontWeight: FontWeight.w800,
      height: 1.1,
      letterSpacing: -0.9,
    ),
    headlineMedium: textTheme.headlineMedium?.copyWith(
      color: kBlackColor,
      fontSize: 28,
      fontWeight: FontWeight.w700,
      height: 1.12,
      letterSpacing: -0.6,
    ),
    headlineSmall: textTheme.headlineSmall?.copyWith(
      color: kBlackColor,
      fontSize: 24,
      fontWeight: FontWeight.w700,
      height: 1.16,
      letterSpacing: -0.45,
    ),
    titleLarge: textTheme.titleLarge?.copyWith(
      color: kBlackColor,
      fontSize: 22,
      fontWeight: FontWeight.w700,
      height: 1.2,
      letterSpacing: -0.3,
    ),
    titleMedium: textTheme.titleMedium?.copyWith(
      color: kBlackColor,
      fontSize: 16,
      fontWeight: FontWeight.w700,
      height: 1.25,
      letterSpacing: -0.1,
    ),
    titleSmall: textTheme.titleSmall?.copyWith(
      color: kBlackColor,
      fontSize: 14,
      fontWeight: FontWeight.w700,
      height: 1.3,
    ),
    bodyLarge: textTheme.bodyLarge?.copyWith(
      color: kBlackColor,
      fontSize: 16,
      fontWeight: FontWeight.w400,
      height: 1.5,
    ),
    bodyMedium: textTheme.bodyMedium?.copyWith(
      color: kDarkGreyColor,
      fontSize: 14,
      fontWeight: FontWeight.w400,
      height: 1.45,
    ),
    bodySmall: textTheme.bodySmall?.copyWith(
      color: kDarkGreyColor,
      fontSize: 12,
      fontWeight: FontWeight.w400,
      height: 1.35,
    ),
    labelLarge: textTheme.labelLarge?.copyWith(
      color: kBlackColor,
      fontSize: 14,
      fontWeight: FontWeight.w700,
      height: 1.2,
      letterSpacing: 0.05,
    ),
    labelMedium: textTheme.labelMedium?.copyWith(
      color: kDarkGreyColor,
      fontSize: 12,
      fontWeight: FontWeight.w600,
      height: 1.2,
      letterSpacing: 0.1,
    ),
    labelSmall: textTheme.labelSmall?.copyWith(
      color: kDarkGreyColor,
      fontSize: 11,
      fontWeight: FontWeight.w600,
      height: 1.2,
      letterSpacing: 0.15,
    ),
  );
}
