import 'package:flutter/material.dart';

abstract class NeColors {
  static const Color green = Color(0xFF73DD6A);
  static const Color darkOrange = Color(0xFFFFB84F);
  static const Color orange48 = Color(0x7AFFB84F);
  static const Color pink = Color(0xFFEA5F5F);

  static const Color gray8b = Color(0xFF141414);
  static const Color gray16b = Color(0xFF292929);
  static const Color gray24b = Color(0xFF3D3D3D);
  static const Color gray48b = Color(0xFF7A7A7A);
  static const Color gray72b = Color(0xFFB8B8B8);

  static const Color darkGray16b = Color(0xFF1F2328);
  static const Color darkGray48b = Color(0xFF69717A);
  static const Color lightBackground1 = Color(0xFFF6F8FA);
  static const Color lightBackground2 = Color(0xFFCAD7E5);
  static const Color lightOrange = Color(0xFFFFAF37);
}

abstract class NeColorSchemes {
  static const darkScheme = ColorScheme.dark(
    background: Colors.black,
    onBackground: Colors.white,
    outline: NeColors.gray72b,
    outlineVariant: NeColors.gray24b,
    primary: NeColors.darkOrange,
    onPrimary: Colors.black,
    primaryContainer: NeColors.gray24b,
    onPrimaryContainer: NeColors.gray48b,
    surface: NeColors.gray16b,
    onSurface: Colors.white,
    surfaceVariant: NeColors.gray8b,
    onSurfaceVariant: Colors.white,
    tertiary: NeColors.darkOrange,
    onTertiary: NeColors.orange48,
    tertiaryContainer: NeColors.gray16b,
  );

  static const light = ColorScheme.light(
    background: Colors.white,
    onBackground: Colors.black,
    outline: NeColors.darkGray16b,
    outlineVariant: NeColors.lightBackground2,
    primary: NeColors.lightOrange,
    onPrimary: Colors.black,
    primaryContainer: NeColors.lightBackground1,
    onPrimaryContainer: NeColors.gray48b,
    surface: NeColors.lightBackground1,
    onSurface: NeColors.darkGray16b,
    surfaceVariant: NeColors.lightBackground1,
    onSurfaceVariant: NeColors.darkGray16b,
    tertiary: NeColors.pink,
    onTertiary: NeColors.lightBackground2,
    tertiaryContainer: NeColors.lightBackground1,
  );
}
