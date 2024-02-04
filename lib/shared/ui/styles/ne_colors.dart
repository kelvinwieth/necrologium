import 'package:flutter/material.dart';

abstract class NeColors {
  static const Color green = Color(0xFF73DD6A);
  static const Color orange = Color(0xFFFFB84F);
  static const Color pink = Color(0xFFEA5F5F);

  static const Color gray8b = Color(0xFF141414);
  static const Color gray16b = Color(0xFF292929);
  static const Color gray24b = Color(0xFF3D3D3D);
  static const Color gray48b = Color(0xFF7A7A7A);
  static const Color gray72b = Color(0xFFB8B8B8);
}

abstract class NeColorSchemes {
  static const darkScheme = ColorScheme.dark(
    background: Colors.black,
    onBackground: Colors.white,
    outline: NeColors.gray72b,
    outlineVariant: NeColors.gray24b,
    primary: NeColors.orange,
    onPrimary: Colors.black,
    primaryContainer: NeColors.gray24b,
    onPrimaryContainer: NeColors.gray48b,
    surface: NeColors.gray16b,
    onSurface: Colors.white,
    surfaceVariant: NeColors.gray8b,
    onSurfaceVariant: Colors.white,
  );
}
