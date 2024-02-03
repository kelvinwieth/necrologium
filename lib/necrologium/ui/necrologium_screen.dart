import 'package:flutter/material.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';
import 'package:necrologium/shared/ui/texts/ne_display_text.dart';

class NecrologiumScreen extends StatelessWidget {
  const NecrologiumScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: Center(
        child: NeDisplayText(
          'Necrologio',
          color: context.colors.onBackground,
        ),
      ),
    );
  }
}
