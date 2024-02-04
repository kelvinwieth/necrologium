import 'dart:developer';

import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:necrologium/diary/core/diary_repository.dart';
import 'package:necrologium/diary/ui/bloc/diary_event.dart';
import 'package:necrologium/diary/ui/bloc/diary_state.dart';

class DiaryBloc extends Bloc<DiaryEvent, DiaryState> {
  final DiaryRepository repository;

  DiaryBloc({required this.repository}) : super(DiaryInitialState()) {
    on<OpenDiary>(_openDiary);
  }

  void _openDiary(OpenDiary event, Emitter<DiaryState> emit) async {
    emit(DiaryLoading());

    try {
      final diary = await repository.getDiary();
      emit(
        DiaryLoaded(diary: diary, today: DateTime.now()),
      );
    } catch (e) {
      // TODO: handle error
      log('#### $e');
    }
  }
}
