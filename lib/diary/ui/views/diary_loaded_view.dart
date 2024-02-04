import 'package:flutter/material.dart';
import 'package:necrologium/diary/ui/widgets/status_tag.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';
import 'package:necrologium/shared/ui/texts/ne_texts.dart';
import 'package:necrologium/shared/ui/widgets/action_card.dart';
import 'package:necrologium/shared/ui/widgets/spacers.dart';

class DiaryLoadedView extends StatelessWidget {
  const DiaryLoadedView({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.stretch,
        children: [
          NeH1Text.bold(
            'Segunda-feira',
            color: context.colors.onBackground,
          ),
          NeH2Text.bold(
            '16 de dezembro',
            color: context.colors.outline,
          ),
          const VerticalSpace(16),
          const StatusTag(isCompleted: false),
          const VerticalSpace(16),
          const SizedBox(
            height: 88,
            child: Row(
              crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                Flexible(
                  child: ActionCard.highlight(
                    icon: Icons.edit_document,
                    text: 'Escrever \ndiário',
                  ),
                ),
                HorizontalSpace(8),
                Flexible(
                  child: ActionCard(
                    icon: Icons.chevron_left,
                    text: 'Ver diário de ontem',
                  ),
                ),
              ],
            ),
          ),
          const VerticalSpace(64),
          NeH2Text.bold(
            'Todos meus diários',
            color: context.colors.outline,
          ),
          const VerticalSpace(16),
          Container(
            height: 296,
            decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: context.colors.surface,
            ),
            padding: const EdgeInsets.all(16),
            child: const Placeholder(),
          ),
        ],
      ),
    );
  }
}
