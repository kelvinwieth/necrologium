import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';

class ScaffoldWithTabs extends StatelessWidget {
  final StatefulNavigationShell shell;

  const ScaffoldWithTabs({super.key, required this.shell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: shell,
      bottomNavigationBar: NavigationBar(
        selectedIndex: shell.currentIndex,
        onDestinationSelected: shell.goBranch,
        destinations: const [
          NavigationDestination(
            icon: Icon(Icons.book),
            label: 'Diario',
          ),
          NavigationDestination(
            icon: Icon(Icons.ballot),
            label: 'Necro',
          ),
          NavigationDestination(
            icon: Icon(Icons.settings),
            label: 'Options',
          ),
        ],
      ),
    );
  }
}
