import 'package:necrologium/diary/core/diary.dart';

abstract class DiaryRepository {
  Future<Diary> getDiary();
}
