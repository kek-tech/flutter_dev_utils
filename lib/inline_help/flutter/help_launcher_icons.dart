/// ## Launcher
/// ### Name
/// #### Android
/// android/app/src/main/AndroidManifest.xml
/// ```<application
///         android:name="io.flutter.app.FlutterApplication"
///         android:label="your_app_name"
///         android:icon="@mipmap/ic_launcher">
/// ```
/// #### iOS
/// ios/Runner/Info.plist
/// ```
/// <key>CFBundleDisplayName</key>
/// <string>your_app_name</string>
/// <key>CFBundleName</key>
/// <string>your_app_name</string>
/// ```
/// ### Icons
/// https://stackoverflow.com/questions/43928702/how-to-change-the-application-launcher-icon-on-flutter
/// #### Android
/// - Faced issues with getting flutter launcher icon packages to work for android background and foreground
/// - Manually setting the icons in android\app\src\main\res also does not affect the android icon foreground and background
/// - Need to open Android Studio > Image Studio > Configure Image Asset by going to android/app/src/main/res and right clicking -> New -> Image Asset
/// - This option does not appear if the gradle sync fails
///   - To fix this, open the build.gradle file in Android Studio, comment out the manifestPlaceholders section, then go to File > Sync Project with Gradle Files
/// - The option should now appear
///
/// - Set icons manually instead
/// Flutter has its own default icon for every app in its Android and Ios folder so there are few steps that I would like to show to change the app icon.
/// #### iOS
/// https://appicon.co/
/// - Go inside ios\Runner in your flutter app and there paste the Assets.xcassets content
/// Restart your emulator or rebuild your application 😁
class HelpLauncherIcons {}
