# flutter_dev_utils

Flutter dev utils to make your life easier

## Features

* Sync and async tryCatchHandler
  * Used for state management to ensure you never miss an exception.
* CallerLogger
  * Built off logger package with functionality to print caller, ignore certain callers, and filter printed logs by caller type
* Help
  * Stop clicking those purple stackoverflow links! HelpFoo classes can be used for inline code help.

  ![Alt Text](https://github.com/Kek-Tech/flutter_dev_utils/blob/main/assets/HelpClass.gif)

## Usage

### CallerLogger
```
var logger = CallerLogger(
  ignoreCallers: {
    'syncTryCatchHandler', // logs from this function will be ignored
  },
  filter: TypeFilter(
    ignoreTypes: {
      IgnoredClass, // logs from this class will be ignored
    },
    ignoreLevel: Level.warning, // logs of Level.warning and anove will always be shown
  ),
  level: Level.verbose, // show logs of Level.verbose and above
);
```
See example/main_caller_logger.dart for more info.

### tryCatchHandler
```
syncTryCatchHandler(
      tryFunction: () =>
          jsonDecode('notJson'), // this should throw an exception and print a detailed log
    );
```

## Additional information

### Making Changes
1. Run `flutter test`
2. Change version number in pubspec.yaml
3. Update CHANGELOG.md
4. Run `dart pub publish --dry-run`
5. Run `dart pub publish`
