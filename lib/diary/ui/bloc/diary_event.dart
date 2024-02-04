import 'package:equatable/equatable.dart';

abstract class DiaryEvent extends Equatable {}

class OpenDiary extends DiaryEvent {
  @override
  List<Object?> get props => [];
}

class WriteOnDiary extends DiaryEvent {
  final DateTime day;
  final String note;

  WriteOnDiary({required this.day, required this.note});

  @override
  List<Object?> get props => [day, note];
}

class RemoveOfDiary extends DiaryEvent {
  final DateTime day;

  RemoveOfDiary({required this.day});

  @override
  List<Object?> get props => [day];
}
