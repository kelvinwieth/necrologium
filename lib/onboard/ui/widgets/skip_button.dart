import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:necrologium/shared/ui/buttons/ne_text_button.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';

class SkipButton extends StatelessWidget {
  const SkipButton({super.key});

  @override
  Widget build(BuildContext context) {
    return NeTextButton(
      text: 'Pular',
      onTap: () => context.go('/diary'),
      color: context.colors.primary,
    );
  }
}
