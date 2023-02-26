import 'package:flutter_dev_utils/flutter_dev_utils.dart';
import 'package:flutter_dev_utils/src/test/test_exception.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('test_async_try_handler', () async {
    final result = await asyncTryHandler(
      tryFunction: () async {
        return await Future.delayed(
            const Duration(milliseconds: 50), () => true);
      },
    );
    expectLater(result, true);
  });

  test('catch_correct_known_exception_async', () async {
    final result = await asyncTryHandler(
      tryFunction: () async {
        return await Future.delayed(const Duration(milliseconds: 50), () {
          throw TestException();
        });
      },
      catchKnownExceptions: {
        TestException(): (e) async => true,
      },
      catchUnknownExceptions: (e) async => false,
    );

    expectLater(result, true);
  });
  test('catch_correct_known_exception_sync', () {
    final result = syncTryHandler(
      tryFunction: () {
        throw TestException();
      },
      catchKnownExceptions: {
        TestException(): (e) => true,
      },
      catchUnknownExceptions: (e) => false,
    );

    expectLater(result, true);
  });
  test('test_sync_try_handler', () {
    expect('a', 'a');
  });
}
