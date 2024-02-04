import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:necrologium/shared/ui/buttons/ne_back_button.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';

class CustomAppBar extends StatelessWidget implements PreferredSizeWidget {
  final String? title;

  const CustomAppBar({super.key, this.title});

  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 24),
        child: SizedBox(
          height: preferredSize.height,
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.end,
            children: [
              if (context.canPop()) ...[
                const NeBackButton(),
              ],
              if (title != null) ...[
                const Spacer(),
                Text(
                  title!,
                  style: TextStyle(
                    fontSize: 14,
                    color: context.colors.primary,
                  ),
                ),
              ],
            ],
          ),
        ),
      ),
    );
  }

  @override
  Size get preferredSize => const Size.fromHeight(kToolbarHeight);
}
