import 'package:necrologium/diary/core/diary.dart';
import 'package:necrologium/diary/core/diary_repository.dart';

class InMemoryDiaryRepository implements DiaryRepository {
  static final _diary = Diary(
    days: [
      DiaryDay(
        day: DateTime(2024, 02, 03),
        note: 'SIM SIM SALAMIN',
      ),
      DiaryDay(
        day: DateTime(2024, 02, 04),
        note: 'Pudim',
      ),
    ],
  );

  static Duration get _delay => const Duration(seconds: 2);

  @override
  Future<Diary> getDiary() async {
    await Future.delayed(_delay);
    return _diary;
  }
}
