// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter_dev_utils/flutter_dev_utils.dart';

void main() {
  print(
      'Run with either `dart example/main_try_catch_handler.dart` or `dart --enable-asserts example/main_try_catch_handler.dart`.');
  tryHandlerDemo();
}

void tryHandlerDemo() async {
  final syncResult = syncTryHandler(tryFunction: () {
    print('It works!'); // this should print
    return true;
  });

  print('This should be true: $syncResult');

  final asyncResult = await asyncTryHandler(tryFunction: () async {
    print('It works!'); // this should print
    return true;
  });

  print('This should be true: $asyncResult');

  syncTryHandler(
    tryFunction: () => jsonDecode('notJson'), // this should throw an exception
  );
  asyncTryHandler(
    tryFunction: () => jsonDecode('notJson'), // this should throw an exception
  );
}
