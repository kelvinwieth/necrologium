import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';
import 'package:necrologium/shared/ui/styles/ne_colors.dart';
import 'package:necrologium/shared/ui/texts/ne_texts.dart';
import 'package:necrologium/shared/ui/widgets/spacers.dart';

class Tabs extends StatelessWidget {
  final int currentIndex;
  final void Function(int) onSelected;

  const Tabs({
    super.key,
    required this.currentIndex,
    required this.onSelected,
  });

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 50,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 82),
        child: Row(
          children: [
            TabItem(
              icon: Icons.book,
              label: 'Diário',
              isSelected: currentIndex == 0,
              onTap: () => onSelected(0),
            ),
            const Spacer(),
            TabItem(
              icon: FontAwesomeIcons.skull,
              label: 'Necrológio',
              isSelected: currentIndex == 1,
              onTap: () => onSelected(1),
            ),
            const Spacer(),
            TabItem(
              icon: Icons.settings,
              label: 'Opções',
              isSelected: currentIndex == 2,
              onTap: () => onSelected(2),
            ),
          ],
        ),
      ),
    );
  }
}

class TabItem extends StatelessWidget {
  final String label;
  final IconData icon;
  final bool isSelected;
  final void Function() onTap;

  const TabItem({
    super.key,
    required this.label,
    required this.icon,
    required this.isSelected,
    required this.onTap,
  });

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap,
      behavior: HitTestBehavior.opaque,
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 8),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Icon(
              icon,
              color: isSelected
                  ? context.colors.onBackground
                  : context.colors.onPrimaryContainer,
            ),
            const VerticalSpace(4),
            NeSmallText(
              label,
              color: isSelected
                  ? context.colors.onBackground
                  : context.colors.onPrimaryContainer,
            ),
            const VerticalSpace(4),
            AnimatedCrossFade(
              firstChild: const SizedBox(),
              secondChild: Container(
                width: 18,
                height: 2,
                decoration: BoxDecoration(
                  color: NeColors.pink,
                  borderRadius: BorderRadius.circular(4),
                ),
              ),
              crossFadeState: isSelected
                  ? CrossFadeState.showSecond
                  : CrossFadeState.showFirst,
              duration: const Duration(milliseconds: 150),
            ),
          ],
        ),
      ),
    );
  }
}
