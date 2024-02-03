import 'package:flutter/material.dart';
import 'package:necrologium/onboard/ui/widgets/onboard_topic.dart';
import 'package:necrologium/onboard/ui/widgets/skip_button.dart';
import 'package:necrologium/onboard/ui/widgets/svg_illustration.dart';
import 'package:necrologium/onboard/ui/widgets/onboard_progress.dart';
import 'package:necrologium/shared/ui/buttons/ne_back_button.dart';
import 'package:necrologium/shared/ui/buttons/ne_primary_button.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';
import 'package:necrologium/shared/ui/texts/ne_texts.dart';
import 'package:necrologium/shared/ui/widgets/spacers.dart';

class OnboardView02 extends StatelessWidget {
  final void Function()? onPop;
  final void Function()? onNext;

  const OnboardView02({super.key, this.onPop, this.onNext});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          const VerticalSpace(32),
          Padding(
            padding: const EdgeInsets.only(left: 24),
            child: NeBackButton(onTap: onPop),
          ),
          const Expanded(
            child: SvgIllustration.reading(),
          ),
          const VerticalSpace(32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 48),
            child: Column(
              children: [
                NeDisplayText(
                  'Diário',
                  fontWeight: FontWeight.bold,
                  color: context.colors.onBackground,
                ),
                const VerticalSpace(8),
                NeRegularText(
                  'Registre notas curtas sobre seu dia como exercício de desenvolvimento pessoal',
                  textAlign: TextAlign.center,
                  color: context.colors.outline,
                ),
                const VerticalSpace(32),
                const OnboardTopic(
                  title: 'Mantemos o progresso',
                  subtitle: 'Leia qualquer diário escrito a qualquer momento',
                ),
                const VerticalSpace(16),
                const OnboardTopic(
                  title: 'Privacidade total',
                  subtitle: 'Seus dados são guardados de forma segura',
                ),
                const VerticalSpace(16),
                const OnboardTopic(
                  title: 'Flexibilidade',
                  subtitle:
                      'Não se preocupe em escrever quando não puder, pois é possível escrever notas para dias anteriores',
                ),
                const VerticalSpace(24),
                NePrimaryButton(title: 'Continuar   >', onTap: onNext),
                const VerticalSpace(16),
                const OnboardProgress(total: 3, current: 2),
                const VerticalSpace(32),
                const SkipButton(),
                const VerticalSpace(30),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
