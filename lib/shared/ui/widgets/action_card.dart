import 'package:flutter/material.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';
import 'package:necrologium/shared/ui/texts/ne_texts.dart';
import 'package:necrologium/shared/ui/widgets/spacers.dart';

class ActionCard extends StatelessWidget {
  final IconData icon;
  final String text;
  final void Function()? onTap;
  final bool hasBorder;

  const ActionCard({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  }) : hasBorder = false;

  const ActionCard.highlight({
    super.key,
    required this.icon,
    required this.text,
    this.onTap,
  }) : hasBorder = true;

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(8),
        border: hasBorder
            ? Border.all(color: context.colors.onPrimaryContainer, width: 2)
            : null,
      ),
      padding: const EdgeInsets.symmetric(horizontal: 16, vertical: 24),
      child: Row(
        children: [
          Icon(icon, color: context.colors.onSurface),
          const HorizontalSpace(8),
          Flexible(
            child: NeRegularText(text, color: context.colors.onSurface),
          ),
        ],
      ),
    );
  }
}
