import 'package:dart_date/dart_date.dart';

class Diary {
  final List<DiaryDay> days;

  const Diary({required this.days});

  bool wroteOnDay(DateTime day) {
    return days.any((d) => d.day.isSameDay(day));
  }
}

class DiaryDay {
  final DateTime day;
  final String note;

  const DiaryDay({
    required this.day,
    required this.note,
  });
}
