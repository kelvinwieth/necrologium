import 'package:flutter/material.dart';
import 'package:necrologium/onboard/ui/widgets/skip_button.dart';
import 'package:necrologium/onboard/ui/widgets/svg_illustration.dart';
import 'package:necrologium/onboard/ui/widgets/onboard_progress.dart';
import 'package:necrologium/shared/ui/buttons/ne_primary_button.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';
import 'package:necrologium/shared/ui/texts/ne_texts.dart';
import 'package:necrologium/shared/ui/widgets/spacers.dart';

class OnboardView01 extends StatelessWidget {
  final void Function()? onNext;

  const OnboardView01({super.key, this.onNext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: Column(
        children: [
          const Expanded(
            child: SvgIllustration.waving(),
          ),
          const VerticalSpace(32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Column(
              children: [
                NeDisplayText(
                  'Bem-vindo',
                  textAlign: TextAlign.center,
                  fontWeight: FontWeight.bold,
                  color: context.colors.onBackground,
                ),
                const VerticalSpace(24),
                NeRegularText(
                  'Sua jornada de desenvolvimento pessoal com registro de notas começa aqui. Oferecemos diários e necrológios, exercícios de escrita especiais para que você se conheça melhor!',
                  textAlign: TextAlign.center,
                  color: context.colors.outline,
                ),
                const VerticalSpace(24),
                NePrimaryButton(title: 'Continuar   >', onTap: onNext),
                const VerticalSpace(16),
                const OnboardProgress(total: 3, current: 1),
                const VerticalSpace(64),
                const SkipButton(),
              ],
            ),
          ),
          const VerticalSpace(64),
        ],
      ),
    );
  }
}
