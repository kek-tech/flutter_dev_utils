import 'dart:convert';

import 'package:flutter_dev_utils/flutter_dev_utils.dart';
import 'package:logger/logger.dart';

void main() {
  print(
      'Run with either `dart example/main.dart` or `dart --enable-asserts example/main.dart`.');
  Demo.run();
}

class Demo {
  static void run() {
    syncTryCatchHandler(tryFunction: () {
      CallerLogger().i('It works!');
      return true;
    });
    asyncTryCatchHandler(tryFunction: () async {
      CallerLogger().i('It works!');
      return true;
    });
    syncTryCatchHandler(
      tryFunction: () => jsonDecode('notJson'),
    );
    asyncTryCatchHandler(
      tryFunction: () => jsonDecode('notJson'),
    );
  }
}
