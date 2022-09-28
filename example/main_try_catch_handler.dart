import 'dart:convert';

import 'package:flutter_dev_utils/flutter_dev_utils.dart';
import 'package:flutter_dev_utils/src/caller_logger/caller_logger.dart';
import 'package:logger/logger.dart';

void main() {
  print(
      'Run with either `dart example/main_try_catch_handler.dart` or `dart --enable-asserts example/main_try_catch_handler.dart`.');
  Demo.run();
}

class Demo {
  static void run() {
    syncTryCatchHandler(tryFunction: () {
      CallerLogger().i('It works!'); // this should print
      return true;
    });

    asyncTryCatchHandler(tryFunction: () async {
      CallerLogger().i('It works!'); // this should print
      return true;
    });
    syncTryCatchHandler(
      tryFunction: () =>
          jsonDecode('notJson'), // this should throw an exception
    );
    asyncTryCatchHandler(
      tryFunction: () =>
          jsonDecode('notJson'), // this should throw an exception
    );
  }
}
