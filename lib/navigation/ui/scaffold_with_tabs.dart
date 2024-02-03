import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:necrologium/navigation/ui/tabs.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';

class ScaffoldWithTabs extends StatelessWidget {
  final StatefulNavigationShell shell;

  const ScaffoldWithTabs({super.key, required this.shell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: shell,
      bottomNavigationBar: Container(
        padding: const EdgeInsets.symmetric(vertical: 16),
        color: context.colors.primaryContainer,
        child: Tabs(
          currentIndex: shell.currentIndex,
          onSelected: shell.goBranch,
        ),
      ),
    );
  }
}
