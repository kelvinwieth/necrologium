import 'package:flutter/material.dart';
import 'package:necrologium/shared/ui/buttons/ne_button.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';

class NePrimaryButton extends StatelessWidget {
  final String title;
  final IconData? leading;
  final void Function()? onTap;

  const NePrimaryButton({
    super.key,
    required this.title,
    this.leading,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return NeButton(
      onTap: onTap,
      title: title,
      leading: leading,
      backgroundColor: context.colors.primary,
      textColor: context.colors.onPrimary,
    );
  }
}
