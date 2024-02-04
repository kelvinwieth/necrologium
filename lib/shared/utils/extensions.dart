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
}
