// ignore_for_file: avoid_print

import 'main_caller_logger.dart';
import 'main_try_handler.dart';

void main() {
  print(
      'Run with either `dart example/main_try_catch_handler.dart` or `dart --enable-asserts example/main_try_catch_handler.dart`.');
  callerLoggerDemo();
  tryHandlerDemo();
}
