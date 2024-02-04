import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:necrologium/onboard/ui/widgets/onboard_topic.dart';
import 'package:necrologium/onboard/ui/widgets/svg_illustration.dart';
import 'package:necrologium/onboard/ui/widgets/onboard_progress.dart';
import 'package:necrologium/shared/ui/buttons/ne_back_button.dart';
import 'package:necrologium/shared/ui/buttons/ne_primary_button.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';
import 'package:necrologium/shared/ui/texts/ne_texts.dart';
import 'package:necrologium/shared/ui/widgets/spacers.dart';

class OnboardView03 extends StatelessWidget {
  final void Function()? onPop;

  const OnboardView03({super.key, this.onPop});

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
            child: SvgIllustration.waiting(),
          ),
          const VerticalSpace(32),
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 24),
            child: Column(
              children: [
                NeDisplayText(
                  'Necrológio',
                  color: context.colors.onBackground,
                  fontWeight: FontWeight.bold,
                ),
                const VerticalSpace(8),
                NeRegularText(
                  'Um exercício de imaginação onde você escreve “após o fim de sua vida” para entender onde está e onde quer chegar',
                  textAlign: TextAlign.center,
                  color: context.colors.outline,
                ),
                const VerticalSpace(32),
                const OnboardTopic(
                  title: 'Múltiplas notas',
                  subtitle:
                      'É possível escrever um necrológio quantas vezes quiser e quando quiser',
                ),
                const VerticalSpace(16),
                const OnboardTopic(
                  title: 'Sem limites',
                  subtitle: 'Seus necrológios não têm limite de caracteres',
                ),
                const VerticalSpace(24),
                NePrimaryButton(
                  title: 'Iniciar jornada',
                  onTap: () => context.go('/diary'),
                ),
                const VerticalSpace(16),
                const OnboardProgress(total: 3, current: 3),
                const VerticalSpace(64),
              ],
            ),
          ),
        ],
      ),
    );
  }
}
