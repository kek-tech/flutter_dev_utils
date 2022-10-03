/// # Best practices with ChangeNotifer
///
/// State in ChangeNotifiers should be init and disposed, e.g.
///
/// ```
/// class StateManagedChangeNotifier extends ChangeNotifier {
///   void initState() {
///     /// init class members here
///   }
///   void disposeState() {
///     /// dispose class members here
///   }
/// }
/// ```
abstract class HelpChangeNotifier {}
