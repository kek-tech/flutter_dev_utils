/// # UI Approach
///
/// ## Declarative
///
/// - what to show from state
///   - e.g., in Dart/Flutter:
///
/// ```
/// string = 'Hello World'
/// build() {
///   return Text(string) // text gets destroyed and rebuilt
/// }
/// ```
///
/// - Updating text on screen can be done by mutating state outside of build
///   - e.g., string = string + ! builds HelloWorld!
///
/// ##  Imperative
/// - how to show from state
///   - e.g., in Java/Android:
///
/// ```
/// build() {
///   return Text.setText('Hello World') // text does not get destroyed, value gets updated
/// }
/// ```
///
/// - Updating text on screen must be done by accessing current UI state before mutating UI
///   - e.g., Text.setText(Text.getText+"!") builds HelloWorld!
class HelpUIApproach {}
