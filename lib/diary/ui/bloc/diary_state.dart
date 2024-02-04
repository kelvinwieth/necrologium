import 'package:dartx/dartx.dart';
import 'package:equatable/equatable.dart';
import 'package:intl/intl.dart';
import 'package:necrologium/diary/core/diary.dart';

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

  DiaryLoaded({
    required this.diary,
    required this.today,
  });

  bool get wroteToday => diary.wroteOnDay(today);
  String get weekDay => DateFormat('EEEE').format(today).capitalize();
  String get day => DateFormat("d 'de' MMMM").format(today).capitalize();

  @override
  List<Object?> get props => [diary];
}
