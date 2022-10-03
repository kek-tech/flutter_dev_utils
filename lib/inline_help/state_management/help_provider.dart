/// # Help with Provider State Management
///
/// ##### ChangeNotifier
///
/// - Provides change notification to listeners/subscribers
///   - via notifyListeners()
///   - causes rebuild
/// - e.g.,
///
/// ```
/// class ShoppingCartModel extends ChangeNotifier {
///   final List<Item> items = [];
///   void addToCart(Item item) {
///     items.add(item);
///     notifyListeners();
///   }
/// }
/// ```
///
/// ##### ChangeNotifierProvider
/// - Provides instance of ChangeNotifier to descendants
///   - should not place higher than necessary to prevent pollution of scope
/// - e.g.,
///
/// ```
/// void main() {
///   ChangeNotifierProvider(
///     create: (context) => ShoppingCartModel(),
///     child: constMyApp,
///   )
/// }
/// ```
///
/// - Multiple providers possible:
///
/// ```
/// void main() {
///   runApp(
///     MultiProvider(
///       providers: [
///         ChangeNotifierProvider(create: (context) => CartModel()),
///         Provider(create: (context) => SomeOtherClass()),
///       ],
///       child: const MyApp(),
///     ),
///   );
/// }
/// ```
///
/// ##### Consumer
///
/// - Grants access to provider state and triggers rebuild when provider state changes
///   - type of model must be specified, e.g., `<CartModel>`
///   - put Consumer as deep in tree as possible to prevent unnecessary rebuilds
/// - e.g.,
///
/// ```
/// return Consumer<CartModel>(
///   builder: (context, cart, child) {
///     return Text("Total price: ${cart.totalPrice}");
///   },
/// );
/// ```
///
/// - arguments:
///   - context
///   - ChangeNotifier instance
///     - Instance of requested provider type
///   - child
///     - Used for optimisation
///       - when there are expensive widgets that
///         - is under Consumer, and
///         - does not change with ChangeNotifier
///         - e.g.,
///
/// ```
/// return Consumer<CartModel>(
///   builder: (context, cart, child) => Stack(
///     children: [
///       /// Use SomeExpensiveWidget here, without rebuilding every time.
///       if (child != null) child,
///       Text("Total price: ${cart.totalPrice}"),
///     ],
///   ),
///   /// Build the expensive widget here.
///   child: const SomeExpensiveWidget(),
/// );
/// ```
///
/// ##### Provider.of
///
/// - Grants access to provider state without rebuild
///
/// ```
/// Provider.of<CartModel>(context, listen: false).removeAll();
/// ```
class HelpProvider {}
