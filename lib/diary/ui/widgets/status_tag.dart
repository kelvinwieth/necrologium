import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:necrologium/diary/ui/bloc/diary_bloc.dart';
import 'package:necrologium/diary/ui/bloc/diary_state.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';
import 'package:necrologium/shared/ui/styles/ne_colors.dart';
import 'package:necrologium/shared/ui/texts/ne_texts.dart';
import 'package:necrologium/shared/ui/widgets/spacers.dart';

class StatusTag extends StatelessWidget {
  const StatusTag({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<DiaryBloc, DiaryState>(
      buildWhen: (_, current) => current is DiaryLoaded,
      builder: (context, state) {
        if (state is! DiaryLoaded) {
          return const SizedBox();
        }

        return Container(
          decoration: BoxDecoration(
            borderRadius: BorderRadius.circular(8),
            color: state.wroteToday ? NeColors.green : context.colors.primary,
          ),
          padding: const EdgeInsets.symmetric(vertical: 8, horizontal: 16),
          child: Row(
            children: [
              Icon(
                state.wroteToday ? Icons.verified_rounded : Icons.warning,
                size: 12,
              ),
              const HorizontalSpace(8),
              NeRegularText(
                state.wroteToday
                    ? 'Você já registrou em seu diário hoje '
                    : 'Você ainda não escreveu seu diário hoje',
                color: context.colors.onPrimary,
              ),
            ],
          ),
        );
      },
    );
  }
}
