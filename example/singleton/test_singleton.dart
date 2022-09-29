// ignore_for_file: avoid_print

import 'package:flutter_test/flutter_test.dart';
import 'package:mockito/mockito.dart';

void main() {
  print('Run with `flutter test example/singleton/test_singleton.dart`.');
  Demo.run();
}

class Demo {
  static void run() {
    /// Imagine if you did not know it was a Singleton and you were trying to run a couple of tests
    test('Singleton first test', () {
      var object = Singleton();

      expect(object.someValue, 1);
      object.increment();
      expect(object.someValue, 2);
      verify(object.increment()).called(1);
    });

    // Then you run another compartmentalised test
    test('Singleton second test', () {
      var object = Singleton();

      expect(object.someValue,
          1); // but then this fails, because its pointing to the same singleton object in the previous test
    });
  }
}

class Singleton {
  Singleton._();
  static final _instance = Singleton._();

  factory Singleton() {
    return _instance;
  }

  int someValue = 1;

  void increment() {
    someValue++;
  }
}
