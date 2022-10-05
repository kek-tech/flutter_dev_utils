// ignore_for_file: avoid_print

import 'main_caller_logger.dart';
import 'main_try_handler.dart';

void main() async {
  print(
      'Run with either `dart example/main.dart` or `dart --enable-asserts example/main.dart`.');
  print('===== Caller Logger Demo Start =====');
  callerLoggerDemo();
  print('===== Caller Logger Demo End =====');
  print('===== Try Handler Demo Start =====');
  await tryHandlerDemo();
  print('===== Try Handler Demo End =====');
}
