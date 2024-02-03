import 'package:flutter/material.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';
import 'package:necrologium/shared/ui/widgets/spacers.dart';

class OnboardProgress extends StatelessWidget {
  final int total;
  final int current;

  const OnboardProgress({
    super.key,
    required this.total,
    required this.current,
  });

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.center,
      children: List.generate(
        total,
        (index) {
          return _Indicator(
            isActive: index + 1 == current,
            isCompleted: index + 1 < current,
          );
        },
      ).expand((i) => [i, const HorizontalSpace(4)]).toList()
        ..removeLast(),
    );
  }
}

class _Indicator extends StatelessWidget {
  final bool isActive;
  final bool isCompleted;

  const _Indicator({
    required this.isActive,
    required this.isCompleted,
  });

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 4,
      width: isActive ? 24 : 16,
      decoration: BoxDecoration(
        color: isActive || isCompleted
            ? context.colors.onBackground
            : context.colors.outlineVariant,
        borderRadius: BorderRadius.circular(6),
      ),
    );
  }
}
