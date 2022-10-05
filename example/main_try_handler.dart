// ignore_for_file: avoid_print

import 'dart:convert';

import 'package:flutter_dev_utils/flutter_dev_utils.dart';

void main() {
  print(
      'Run with either `dart example/main_try_catch_handler.dart` or `dart --enable-asserts example/main_try_catch_handler.dart`.');
  tryHandlerDemo();
}

Future<void> tryHandlerDemo() async {
  final syncResult = syncTryHandler(tryFunction: () {
    print(
        'Running synchronous try handler which should return true'); // this should print
    return true;
  });

  print('This should be true: $syncResult');

  final asyncResult = await asyncTryHandler(tryFunction: () async {
    print(
        'Running asynchronous try handler which should return true'); // this should print
    return true;
  });

  print('This should be true: $asyncResult');

  syncTryHandler(
    tryFunction: () => jsonDecode('notJson'), // this should throw an exception
  );
  await asyncTryHandler(
    tryFunction: () => jsonDecode('notJson'), // this should throw an exception
  );
}
