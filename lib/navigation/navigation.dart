import 'package:go_router/go_router.dart';
import 'package:necrologium/diary/ui/screens/diary_day_screen.dart';
import 'package:necrologium/diary/ui/screens/diary_screen.dart';
import 'package:necrologium/navigation/ui/scaffold_with_tabs.dart';
import 'package:necrologium/necrologium/ui/necrologium_screen.dart';
import 'package:necrologium/onboard/ui/screens/onboard_screen.dart';
import 'package:necrologium/options/ui/options_screen.dart';
import 'package:necrologium/shared/utils/extensions.dart';

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
                routes: [
                  GoRoute(
                    path: 'day',
                    builder: (_, state) {
                      final extra = state.extra?.maybeAs<Map>();
                      final date = extra?['date'] as DateTime;
                      final note = extra?['note'] as String?;
                      return DiaryDayScreen(date: date, note: note);
                    },
                  ),
                ],
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
          StatefulShellBranch(
            routes: [
              GoRoute(
                path: '/options',
                builder: (_, __) => const OptionsScreen(),
              ),
            ],
          ),
        ],
      ),
    ],
  );
}
