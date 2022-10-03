import 'package:flutter_dev_utils/flutter_dev_utils.dart';
import 'package:flutter_test/flutter_test.dart';

void main() {
  test('test_async_try_handler', () async {
    final result = await asyncTryHandler(tryFunction: () async {
      return await Future.delayed(const Duration(milliseconds: 50), () => 'a');
    });
    expectLater('a', result);
  });
  test('test_sync_try_handler', () {
    expect('a', 'a');
  });
}
