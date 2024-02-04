import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:necrologium/diary/ui/bloc/diary_bloc.dart';
import 'package:necrologium/diary/ui/bloc/diary_event.dart';
import 'package:necrologium/diary/ui/bloc/diary_state.dart';
import 'package:necrologium/diary/ui/views/diary_loaded_view.dart';
import 'package:necrologium/shared/ui/extensions/context_colors_helper.dart';

class DiaryScreen extends StatefulWidget {
  const DiaryScreen({super.key});

  @override
  State<DiaryScreen> createState() => _DiaryScreenState();
}

class _DiaryScreenState extends State<DiaryScreen> {
  @override
  void initState() {
    super.initState();
    WidgetsBinding.instance.addPostFrameCallback((_) {
      final bloc = context.read<DiaryBloc>();
      bloc.add(OpenDiary());
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: context.colors.background,
      body: BlocBuilder<DiaryBloc, DiaryState>(
        builder: (context, state) {
          return switch (state) {
            DiaryLoaded s => DiaryLoadedView(state: s),
            DiaryLoading _ => const DiaryLoadingView(),
            _ => const SizedBox(),
          };
        },
      ),
    );
  }
}

class DiaryLoadingView extends StatelessWidget {
  const DiaryLoadingView({super.key});

  @override
  Widget build(BuildContext context) {
    return Center(
      child: CircularProgressIndicator(
        color: context.colors.primary,
      ),
    );
  }
}
