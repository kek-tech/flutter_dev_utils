/// # Errors
/// An Error in Dart should be thrown for unexpected program flow and should not be caught but addressed by the programmer:
/// Error and its subclasses are for programmatic errors. If one of those occurs, your code is bad and you should fix your code.
/// Except in a few special circumstances, idiomatic Dart should throw Errors, but never catch them. They exists specifically to not be caught so that they take down the app and alert the programmer to the location of the bug.
///
/// Flutter Error Types:
///
/// * ArgumentError
/// * AssertionError
/// * AsyncError
/// * CastError
/// * ConcurrentModificationError
/// * CyclicInitializationError
/// * DriverError
/// * FallThroughError
/// * FlutterError
/// * HttpProfileRequestError
/// * JsonUnsupportedObjectError
/// * NoSuchMethodError
/// * NullThrownError
/// * OutOfMemoryError
/// * RemoteError
/// * StackOverflowError
/// * StateError
/// * TypeError
/// * UnimplementedError
/// * UnsupportedError
abstract class HelpError {}
