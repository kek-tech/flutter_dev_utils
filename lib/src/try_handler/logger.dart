import 'package:flutter_dev_utils/src/caller_logger/caller_logger.dart';
import 'package:flutter_dev_utils/src/caller_logger/type_filter.dart';
import 'package:logger/logger.dart';

var utilsLogger = CallerLogger(
  ignoreCallers: {
    'asyncTryCatchHandler',
    'syncTryCatchHandler',
  },
  filter: TypeFilter(
    ignoreTypes: {},
    ignoreLevel: Level.warning,
  ),
  level: Level.verbose,
);
