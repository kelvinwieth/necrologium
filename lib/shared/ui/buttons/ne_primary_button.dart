import 'package:flutter/material.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';

class NePrimaryButton extends StatelessWidget {
  final String title;
  final void Function()? onTap;

  const NePrimaryButton({
    super.key,
    required this.title,
    this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: context.colors.primary,
      ),
      child: InkWell(
        onTap: onTap,
        borderRadius: BorderRadius.circular(8),
        child: Padding(
          padding: const EdgeInsets.symmetric(horizontal: 32, vertical: 16),
          child: Text(
            title,
            style: TextStyle(
              color: context.colors.onPrimary,
            ),
          ),
        ),
      ),
    );
  }
}
