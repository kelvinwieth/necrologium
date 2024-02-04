import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';
import 'package:necrologium/shared/ui/widgets/spacers.dart';

class NeBackButton extends StatelessWidget {
  final void Function()? onTap;

  const NeBackButton({super.key, this.onTap});

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: onTap ?? () => context.pop(),
      behavior: HitTestBehavior.opaque,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.start,
        mainAxisSize: MainAxisSize.min,
        children: [
          Icon(
            Icons.chevron_left,
            color: context.colors.onBackground,
            size: 16,
          ),
          const HorizontalSpace(4),
          Text(
            'Voltar',
            style: TextStyle(
              fontSize: 16,
              color: context.colors.onBackground,
            ),
          ),
        ],
      ),
    );
  }
}
