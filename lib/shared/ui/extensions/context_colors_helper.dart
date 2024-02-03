import 'package:flutter/material.dart';

extension ContextColorsHelper on BuildContext {
  ColorScheme get colors => Theme.of(this).colorScheme;
}
