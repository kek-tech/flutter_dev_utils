import 'package:flutter_dev_utils/flutter_dev_utils.dart';
import 'package:flutter_dev_utils/src/test/test_exception.dart';
import 'package:flutter_test/flutter_test.dart';

void testTryHandler() {
  group('try handler', () {
    test('test_sync_try_handler', () {
      final result = syncTryHandler(
        tryFunction: () {
          return true;
        },
      );
      expect(result, true);
    });

    test('test_async_try_handler', () async {
      final result = await asyncTryHandler(
        tryFunction: () async {
          return await Future.delayed(
              const Duration(milliseconds: 50), () => true);
        },
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

      expect(result, true);
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

    test('catch_static_return_type_sync', () {
      final result = syncTryHandler<bool>(tryFunction: () {
        return true;
      });

      expect(result, true);
    });

    test('catch_static_return_type_async', () async {
      final result = await asyncTryHandler<bool>(tryFunction: () async {
        return true;
      });

      expectLater(result, true);
    });
  });
}
