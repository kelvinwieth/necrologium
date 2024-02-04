extension CastingExtension on Object {
  T? maybeAs<T>() {
    try {
      return this is T ? this as T : null;
    } catch (_) {
      return null;
    }
  }
}
