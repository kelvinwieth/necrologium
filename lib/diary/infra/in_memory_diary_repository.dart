import 'package:necrologium/diary/core/diary.dart';
import 'package:necrologium/diary/core/diary_repository.dart';

class InMemoryDiaryRepository implements DiaryRepository {
  final Diary _diary;

  Duration get _delay => const Duration(seconds: 1);

  InMemoryDiaryRepository() : _diary = Diary() {
    _diary.addNote(DateTime(2024, 02, 02), 'Foo bar');
    _diary.addNote(DateTime(2024, 02, 03), 'Pudim');
  }

  @override
  Future<Diary> getDiary() async {
    await Future.delayed(_delay);
    return _diary;
  }
}
