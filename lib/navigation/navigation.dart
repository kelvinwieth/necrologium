import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:go_router/go_router.dart';
import 'package:necrologium/diary/core/diary_repository.dart';
import 'package:necrologium/diary/infra/in_memory_diary_repository.dart';
import 'package:necrologium/diary/ui/bloc/diary_bloc.dart';
import 'package:necrologium/diary/ui/diary_screen.dart';
import 'package:necrologium/navigation/ui/scaffold_with_tabs.dart';
import 'package:necrologium/necrologium/ui/necrologium_screen.dart';
import 'package:necrologium/onboard/ui/screens/onboard_screen.dart';
import 'package:necrologium/options/ui/options_screen.dart';

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
                builder: (_, __) => MultiBlocProvider(
                  providers: [
                    RepositoryProvider<DiaryRepository>(
                      create: (_) => InMemoryDiaryRepository(),
                    ),
                    BlocProvider<DiaryBloc>(
                      create: (context) =>
                          DiaryBloc(repository: context.read()),
                    ),
                  ],
                  child: const DiaryScreen(),
                ),
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
