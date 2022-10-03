import 'package:flutter_dev_utils/src/try_handler/logger.dart';
import 'package:flutter_dev_utils/src/try_handler/catch_utils.dart';

/// Asynchronous try and catch handler to reduce boilerplate
///
/// Should be called in a State file
Future<dynamic> asyncTryHandler({
  required Future<dynamic> Function() tryFunction,
  Map<dynamic, Future<dynamic> Function(Object e)>? catchKnownExceptions,
  Future<dynamic> Function(Object e)? catchUnknownExceptions,
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
    } catch (e, s) {
      //! Handle Known Errors and Exceptions

      if (e is! Error || e is! Exception || catchKnownExceptions == null) {
        rethrow;
      } else {
        Future<dynamic> Function(Object e)? callback;
        catchKnownExceptions.forEach((key, value) {
          if (key.runtimeType == e.runtimeType) {
            callback = value;
          }
        });

        if (callback != null) {
          utilsLogger.w('Handling known exception', e, s);
          return await callback!.call(e);
        } else {
          rethrow;
        }
      }
    }
  } catch (e, s) {
    //! Handle Unknown Errors and Exceptions
    utilsLogger.e('Caught unknown exception', e, s);
    return await catchUnknownExceptions?.call(e);
  } finally {
    //! Finally
    finallyFunction?.call();
  }
}
