import 'package:dart_date/dart_date.dart';
import 'package:dartx/dartx.dart';
import 'package:uuid/uuid.dart';

class Diary {
  final List<DiaryDay> days;

  const Diary({required this.days});

  bool wroteOnDay(DateTime day) {
    return days.any((d) => d.day.isSameDay(day));
  }

  DiaryDay? getDayOrNull(DateTime date) {
    return days.firstOrNullWhere((d) => d.day.isSameDay(date));
  }
}

class DiaryDay {
  final String id;
  final DateTime day;
  final String note;

  DiaryDay({
    required this.day,
    required this.note,
  }) : id = const Uuid().v1();
}
