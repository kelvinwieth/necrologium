import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:necrologium/diary/core/diary_repository.dart';
import 'package:necrologium/diary/infra/in_memory_diary_repository.dart';
import 'package:necrologium/diary/ui/bloc/diary_bloc.dart';
import 'package:necrologium/diary/ui/views/diary_loaded_view.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';

class DiaryScreen extends StatelessWidget {
  const DiaryScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        RepositoryProvider<DiaryRepository>(
          create: (_) => InMemoryDiaryRepository(),
        ),
        BlocProvider<DiaryBloc>(
          create: (context) => DiaryBloc(repository: context.read()),
        ),
      ],
      child: Scaffold(
        backgroundColor: context.colors.background,
        body: const DiaryLoadedView(),
      ),
    );
  }
}
