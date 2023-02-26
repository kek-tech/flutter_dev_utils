import 'package:flutter_dev_utils/src/try_handler/catch_utils.dart';

/// Synchronous try and catch handler to reduce boilerplate
dynamic syncTryHandler({
  required dynamic Function() tryFunction,
  Map<dynamic, dynamic Function(Object e)>? catchKnownExceptions,
  dynamic Function(Object e)? catchUnknownExceptions,
  void Function()? finallyFunction,
}) {
  //! Validate Catch Known
  if (catchKnownExceptions != null) {
    validateCatchKnownExceptions(catchKnownExceptions);
  }
  try {
    //! Main Try
    try {
      return tryFunction.call();
    } catch (e) {
      //! Handle Known Errors and Exceptions

      if ((e is! Error && e is! Exception) || catchKnownExceptions == null) {
        rethrow;
      } else {
        dynamic Function(Object e)? callback;
        catchKnownExceptions.forEach((key, value) {
          if (key.runtimeType == e.runtimeType) {
            callback = value;
          }
        });

        if (callback != null) {
          return callback!.call(e);
        } else {
          rethrow;
        }
      }
    }
  } catch (e) {
    //! Handle Unknown Errors and Exceptions
    return catchUnknownExceptions?.call(e);
  } finally {
    //! Finally
    finallyFunction?.call();
  }
}
