import 'package:flutter/material.dart';
import 'package:necrologium/diary/ui/bloc/diary_state.dart';
import 'package:necrologium/diary/ui/widgets/calendar.dart';
import 'package:necrologium/diary/ui/widgets/status_tag.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';
import 'package:necrologium/shared/ui/texts/ne_texts.dart';
import 'package:necrologium/shared/ui/widgets/action_card.dart';
import 'package:necrologium/shared/ui/widgets/spacers.dart';
import 'package:necrologium/shared/utils/extensions.dart';

class DiaryLoadedView extends StatelessWidget {
  final DiaryLoaded state;

  const DiaryLoadedView({super.key, required this.state});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: SingleChildScrollView(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.stretch,
            children: [
              NeH1Text.bold(
                state.today.weekDay,
                color: context.colors.onBackground,
              ),
              NeH2Text.bold(
                state.today.dayOfMonth,
                color: context.colors.outline,
              ),
              const VerticalSpace(16),
              StatusTag(wrote: state.wroteToday),
              const VerticalSpace(16),
              SizedBox(
                height: 88,
                child: Row(
                  crossAxisAlignment: CrossAxisAlignment.stretch,
                  children: [
                    Flexible(
                      child: _WriteOrReadTodayCard(wrote: state.wroteToday),
                    ),
                    const HorizontalSpace(8),
                    const Flexible(
                      child: _ReadYesterdayCard(),
                    ),
                  ],
                ),
              ),
              const VerticalSpace(16),
              NeH2Text.bold(
                'Todos meus diários',
                color: context.colors.outline,
              ),
              const VerticalSpace(16),
              Calendar(diary: state.diary),
            ],
          ),
        ),
      ),
    );
  }
}

class _WriteOrReadTodayCard extends StatelessWidget {
  final bool wrote;

  const _WriteOrReadTodayCard({required this.wrote});

  @override
  Widget build(BuildContext context) {
    return wrote
        ? const ActionCard.highlight(
            icon: Icons.menu_book,
            text: 'Ler meu \ndiário',
          )
        : const ActionCard.highlight(
            icon: Icons.edit_document,
            text: 'Escrever \ndiário',
          );
  }
}

class _ReadYesterdayCard extends StatelessWidget {
  const _ReadYesterdayCard();

  @override
  Widget build(BuildContext context) {
    return const ActionCard(
      icon: Icons.chevron_left,
      text: 'Ver diário \nde ontem',
    );
  }
}
