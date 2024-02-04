import 'package:dart_date/dart_date.dart';
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
      final wroteToday = diary.days.any((d) => d.day.isToday);
      final today = DateTime.now();
      emit(DiaryLoaded(diary: diary, today: today, wroteToday: wroteToday));
    } catch (_) {
      // TODO: handle error
    }
  }
}
