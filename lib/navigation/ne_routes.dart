import 'package:go_router/go_router.dart';
import 'package:necrologium/diary/ui/diary_screen.dart';
import 'package:necrologium/navigation/ui/scaffold_with_tabs.dart';
import 'package:necrologium/necrologium/ui/necrologium_screen.dart';
import 'package:necrologium/onboard/ui/screens/onboard_screen.dart';

abstract class Navigation {
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
                builder: (_, __) => const NecrologiumScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
