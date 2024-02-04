import 'package:necrologium/shared/utils/extensions.dart';

class Diary {
  final Map<DateTime, String> _notes;

  Diary() : _notes = {};

  bool wroteOnDay(DateTime date) {
    return _notes.containsKey(date.normalized);
  }

  String? getNoteOrNull(DateTime date) {
    try {
      return _notes[date.normalized];
    } catch (_) {
      return null;
    }
  }

  void addNote(DateTime date, String note) {
    _notes[date.normalized] = note;
  }
}
