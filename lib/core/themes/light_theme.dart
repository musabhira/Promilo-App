import 'package:flutter/material.dart';
import 'package:promilo/core/themes/color_palette.dart';
import 'package:promilo/core/themes/extensions/color_extension.dart';
import 'package:promilo/core/themes/extensions/space_extension.dart';
import 'package:promilo/core/themes/extensions/typography_extension.dart';
import 'package:riverpod_annotation/riverpod_annotation.dart';

part 'light_theme.g.dart';

final _lightTheme = ThemeData(
  brightness: Brightness.light,
  extensions: [
    AppColorExtension(
      primary: AppColorPalettes.blue900,
      secondary: AppColorPalettes.blue500,
      text: AppColorPalettes.black500,
      textInverse: AppColorPalettes.gray200,
      textSubtle: AppColorPalettes.gray300,
      textSubtlest: AppColorPalettes.grey400,
      textDisabled: AppColorPalettes.grey350,
    ),
    AppSpaceExtension.fromBaseSpace(8),
    AppTypographyExtension.fromColors(
        defaultFontColor: AppColorPalettes.black500,
        linkColor: AppColorPalettes.blue500,
        dimFontColor: AppColorPalettes.dimColor,
        whiteFontColor: AppColorPalettes.gray200),
  ],
);

@riverpod
ThemeData lightTheme(LightThemeRef ref) {
  return _lightTheme;
}
