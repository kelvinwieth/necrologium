import 'package:dartx/dartx.dart';
import 'package:intl/intl.dart';

extension CastingExtension on Object {
  T? maybeAs<T>() {
    try {
      return this is T ? this as T : null;
    } catch (_) {
      return null;
    }
  }
}

extension DateTimeExtension on DateTime {
  DateTime get normalized {
    return DateTime.utc(year, month, day);
  }

  bool get isAfterToday => normalized.isAfter(DateTime.now().normalized);

  String get dayOfMonth => DateFormat("d 'de' MMMM").format(this).capitalize();

  String get weekDay => DateFormat('EEEE').format(this).capitalize();

  String get weekDayInitial => weekDay.characters.first.toUpperCase();

  String get monthOfYear => DateFormat("MMMM',' y").format(date).capitalize();
}
