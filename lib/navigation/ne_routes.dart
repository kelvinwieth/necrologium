import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';
import 'package:necrologium/diary/ui/diary_screen.dart';
import 'package:necrologium/onboard/ui/screens/onboard_screen.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';

abstract class NeRoutes {
  static final router = GoRouter(
    initialLocation: '/onboard',
    routes: [
      GoRoute(
        path: '/onboard',
        builder: (_, __) => const OnboardScreen(),
      ),
      StatefulShellRoute.indexedStack(
        builder: (_, __, shell) => ScaffoldWithTabs(shell: shell),
        branches: [
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/diary',
                builder: (_, __) => const DiaryScreen(),
              ),
            ],
          ),
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/necrologium',
                builder: (_, __) => const DiaryScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}

class ScaffoldWithTabs extends StatelessWidget {
  final StatefulNavigationShell shell;

  const ScaffoldWithTabs({super.key, required this.shell});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: shell,
      bottomNavigationBar: NavigationBar(
        destinations: const [
          NavigationDestination(icon: Icon(Icons.book), label: 'Diario'),
          NavigationDestination(icon: Icon(Icons.ballot), label: 'Necro'),
        ],
        onDestinationSelected: shell.goBranch,
      ),
    );
  }
}
