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
