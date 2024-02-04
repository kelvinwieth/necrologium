import 'package:flutter/material.dart';

abstract class NeThemes {
  static final themeModeProvider = ValueNotifier(ThemeMode.system);

  static ThemeMode get themeMode => themeModeProvider.value;

  static set themeMode(ThemeMode mode) => themeModeProvider.value = mode;

  static bool get isDark => themeMode == ThemeMode.dark;

  static setDarkMode(bool enabled) {
    themeMode = enabled ? ThemeMode.dark : ThemeMode.light;
  }
}
