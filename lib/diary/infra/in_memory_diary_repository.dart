import 'package:necrologium/diary/core/diary.dart';
import 'package:necrologium/diary/core/diary_repository.dart';

class InMemoryDiaryRepository implements DiaryRepository {
  final _diary = Diary(
    days: [
      DiaryDay(
        day: DateTime(2023, 02, 03),
        note: 'Foo, bar, baz...',
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
