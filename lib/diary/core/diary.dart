class Diary {
  final List<DiaryDay> days;

  const Diary({required this.days});
}

class DiaryDay {
  final DateTime day;
  final String note;

  const DiaryDay({
    required this.day,
    required this.note,
  });
}
