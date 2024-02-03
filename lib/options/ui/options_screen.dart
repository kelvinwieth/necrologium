import 'package:flutter/material.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';
import 'package:necrologium/shared/ui/texts/ne_texts.dart';

class OptionsScreen extends StatelessWidget {
  const OptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: Center(
        child: NeDisplayText(
          'Opcoes',
          color: context.colors.onBackground,
        ),
      ),
    );
  }
}
