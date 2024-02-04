import 'package:flutter/material.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';
import 'package:necrologium/shared/ui/styles/ne_colors.dart';
import 'package:necrologium/shared/ui/texts/ne_texts.dart';
import 'package:necrologium/shared/ui/widgets/spacers.dart';

class StatusTag extends StatelessWidget {
  final bool isCompleted;

  const StatusTag({super.key, required this.isCompleted});

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        borderRadius: BorderRadius.circular(8),
        color: isCompleted ? NeColors.green : context.colors.primary,
      ),
      padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
      child: Row(
        children: [
          Icon(
            isCompleted ? Icons.verified_rounded : Icons.warning,
            size: 12,
          ),
          const HorizontalSpace(8),
          NeRegularText(
            isCompleted
                ? 'Você já registrou em seu diário hoje '
                : 'Você ainda não escreveu seu diário hoje',
            color: context.colors.onPrimary,
          ),
        ],
      ),
    );
  }
}
