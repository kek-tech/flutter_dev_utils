// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter_dev_utils/flutter_dev_utils.dart';

void main() {
  print(
      'Run with either `dart example/main_try_catch_handler.dart` or `dart --enable-asserts example/main_try_catch_handler.dart`.');
  Demo.run();
}

class Demo {
  static void run() {
    syncTryHandler(tryFunction: () {
      CallerLogger().i('It works!'); // this should print
      return true;
    });

    asyncTryHandler(tryFunction: () async {
      CallerLogger().i('It works!'); // this should print
      return true;
    });
    syncTryHandler(
      tryFunction: () =>
          jsonDecode('notJson'), // this should throw an exception
    );
    asyncTryHandler(
      tryFunction: () =>
          jsonDecode('notJson'), // this should throw an exception
    );
  }
}
