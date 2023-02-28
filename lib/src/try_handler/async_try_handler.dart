import 'package:flutter_dev_utils/src/try_handler/catch_utils.dart';

/// Asynchronous try and catch handler to reduce boilerplate
///
/// Should be called in a State file
Future<T> asyncTryHandler<T>({
  required Future<T> Function() tryFunction,
  Map<dynamic, Future<T> Function(Object e)>? catchKnownExceptions,
  Future<T> Function(Object e)? catchUnknownExceptions,
  void Function()? finallyFunction,
}) async {
  //! Validate Catch Known
  if (catchKnownExceptions != null) {
    validateCatchKnownExceptions(catchKnownExceptions);
  }
  try {
    //! Main Try
    try {
      return await tryFunction.call();
    } catch (e) {
      //! Handle Known Errors and Exceptions

      if ((e is! Error && e is! Exception) || catchKnownExceptions == null) {
        rethrow;
      } else {
        Future<dynamic> Function(Object e)? callback;
        catchKnownExceptions.forEach((key, value) {
          if (key.runtimeType == e.runtimeType) {
            callback = value;
          }
        });

        if (callback != null) {
          return await callback!.call(e);
        } else {
          rethrow;
        }
      }
    }
  } catch (e) {
    //! Handle Unknown Errors and Exceptions
    if (catchUnknownExceptions == null) {
      rethrow;
    }

    return await catchUnknownExceptions.call(e);
  } finally {
    //! Finally
    finallyFunction?.call();
  }
}
