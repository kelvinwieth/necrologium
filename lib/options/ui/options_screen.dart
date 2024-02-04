import 'package:flutter/material.dart';
import 'package:flutter_switch/flutter_switch.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';
import 'package:necrologium/shared/ui/styles/ne_themes.dart';
import 'package:necrologium/shared/ui/texts/ne_texts.dart';
import 'package:necrologium/shared/ui/widgets/spacers.dart';

class OptionsScreen extends StatelessWidget {
  const OptionsScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: SafeArea(
        child: Padding(
          padding: const EdgeInsets.all(24),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              NeH1Text.bold(
                'Opções',
                color: context.colors.onBackground,
              ),
              const VerticalSpace(32),
              Container(
                decoration: BoxDecoration(
                  color: context.colors.surfaceVariant,
                  borderRadius: BorderRadius.circular(8),
                ),
                padding: const EdgeInsets.symmetric(
                  horizontal: 16,
                  vertical: 24,
                ),
                child: const Column(
                  children: [
                    _DarkModeOption(),
                    Divider(height: 32),
                    _ExportDataOption(),
                    Divider(height: 32),
                    _ClearDataOption(),
                  ],
                ),
              ),
              const Spacer(),
              const _RateUsButton(),
              const VerticalSpace(40),
            ],
          ),
        ),
      ),
    );
  }
}

class _DarkModeOption extends StatelessWidget {
  const _DarkModeOption();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.dark_mode_outlined,
          color: context.colors.onSurfaceVariant,
        ),
        const HorizontalSpace(8),
        Text(
          'Modo Escuro',
          style: TextStyle(
            fontSize: 16,
            color: context.colors.onSurfaceVariant,
            fontWeight: FontWeight.w500,
          ),
        ),
        const Spacer(),
        ValueListenableBuilder(
          valueListenable: NeThemes.themeModeProvider,
          builder: (_, __, ___) {
            return FlutterSwitch(
              value: NeThemes.isDark,
              onToggle: NeThemes.setDarkMode,
              height: 24,
              width: 48,
              padding: 2,
              activeColor: context.colors.primary,
            );
          },
        ),
      ],
    );
  }
}

class _ExportDataOption extends StatelessWidget {
  const _ExportDataOption();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.upload_file,
          color: context.colors.onSurfaceVariant,
        ),
        const HorizontalSpace(8),
        Text(
          'Exportar dados',
          style: TextStyle(
            fontSize: 16,
            color: context.colors.onSurfaceVariant,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class _ClearDataOption extends StatelessWidget {
  const _ClearDataOption();

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Icon(
          Icons.delete_outline,
          color: context.colors.onSurfaceVariant,
        ),
        const HorizontalSpace(8),
        Text(
          'Limpar todos os dados',
          style: TextStyle(
            fontSize: 16,
            color: context.colors.onSurfaceVariant,
            fontWeight: FontWeight.w500,
          ),
        ),
      ],
    );
  }
}

class _RateUsButton extends StatelessWidget {
  const _RateUsButton();

  @override
  Widget build(BuildContext context) {
    return Container(
      decoration: BoxDecoration(
        color: context.colors.surface,
        borderRadius: BorderRadius.circular(8),
        border: Border.all(
          color: context.colors.primary.withOpacity(0.48),
          width: 2,
        ),
      ),
      padding: const EdgeInsets.all(12),
      child: Row(
        mainAxisSize: MainAxisSize.max,
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.star,
            size: 16,
            color: context.colors.primary,
          ),
          const HorizontalSpace(8),
          Text(
            'Nos ajude com uma',
            style: TextStyle(
              color: context.colors.onSurface,
            ),
          ),
          Text(
            ' avaliação na loja',
            style: TextStyle(
              color: context.colors.primary,
            ),
          ),
        ],
      ),
    );
  }
}
