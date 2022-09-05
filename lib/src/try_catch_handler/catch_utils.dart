void validateCatchKnownExceptions(
    Map<dynamic, dynamic Function(Exception e)?> catchKnownExceptions) {
  /// Type check for catchKnownExceptions map: key should be error or exception
  ///
  /// Note that AssertionError.runtimeType returns Type, while
  /// AssertionError().runtimeType returns Type
  catchKnownExceptions.forEach((key, value) {
    if (key is! Error && key is! Exception) {
      throw ArgumentError(
          '''Key passed to catchKnownExceptions should be of Error or Exception type, not ${key.runtimeType}.
          \nTry using an instantiation of the error instead of the error,
          e.g., AssertionError() instead of AssertionError.
          This is necessary because AssertionError.runtimeType returns Type, while
          AssertionError().runtimeType returns AssertionEror''');
    }
  });

  /// Duplicate check
  ///
  /// Since an instantiation of Error/Exception is passed instead of the type,
  /// need to check for duplicate keys
  Set keyTypes = {};
  catchKnownExceptions.forEach((key, value) {
    if (!keyTypes.contains(key.runtimeType)) {
      keyTypes.add(key.runtimeType);
    } else {
      throw ArgumentError(
          '''Duplicate key passed to catchKnownExceptions: ${key.runtimeType}''');
    }
  });
}
