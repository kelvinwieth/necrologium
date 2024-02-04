import 'package:flutter/material.dart';
import 'package:necrologium/diary/ui/views/diary_loaded_view.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';

class DiaryScreen extends StatelessWidget {
  const DiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: const DiaryLoadedView(),
    );
  }
}
