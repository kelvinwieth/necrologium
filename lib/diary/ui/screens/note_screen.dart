import 'package:flutter/material.dart';
import 'package:necrologium/navigation/ui/custom_app_bar.dart';
import 'package:necrologium/shared/ui/buttons/ne_button.dart';
import 'package:necrologium/shared/ui/buttons/ne_primary_button.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';
import 'package:necrologium/shared/ui/styles/ne_colors.dart';
import 'package:necrologium/shared/ui/texts/ne_texts.dart';
import 'package:necrologium/shared/ui/widgets/spacers.dart';
import 'package:necrologium/shared/utils/extensions.dart';

class NoteScreen extends StatelessWidget {
  final String? note;
  final DateTime date;

  const NoteScreen({super.key, this.note, required this.date});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      appBar: const CustomAppBar(title: 'Diário'),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24, vertical: 32),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            NeH1Text.bold(
              date.dayOfMonth,
              color: context.colors.onBackground,
            ),
            NeH2Text(
              date.weekDay,
              fontWeight: FontWeight.w500,
              color: context.colors.primary,
            ),
            const VerticalSpace(32),
            NeRegularText.inter(
              note ?? '',
              color: context.colors.onBackground,
              textAlign: TextAlign.justify,
            ),
            const Spacer(),
            const Row(
              mainAxisSize: MainAxisSize.max,
              children: [
                Expanded(
                  child: NeButton(
                    title: 'Apagar texto',
                    leading: Icons.delete_outline,
                    backgroundColor: NeColors.gray24b,
                    textColor: Colors.white,
                  ),
                ),
                HorizontalSpace(8),
                Expanded(
                  child: NePrimaryButton(
                    title: 'Editar texto',
                    leading: Icons.edit,
                  ),
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
