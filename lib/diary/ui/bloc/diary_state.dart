import 'package:equatable/equatable.dart';
import 'package:necrologium/diary/core/diary.dart';
import 'package:necrologium/shared/utils/extensions.dart';

abstract class DiaryState extends Equatable {}

class DiaryInitialState extends DiaryState {
  @override
  List<Object?> get props => [];
}

class DiaryLoading extends DiaryState {
  @override
  List<Object?> get props => [];
}

class DiaryLoaded extends DiaryState {
  final Diary diary;
  final DateTime today;

  DiaryLoaded({required this.diary}) : today = DateTime.now().normalized;

  bool get wroteToday => diary.wroteOnDay(today);

  @override
  List<Object?> get props => [diary];
}
