/// # Help with State Management in Flutter
///
/// ## Terminology
/// ### Ephemeral State
/// - Definition
///   - UI or local state
///   - Contained in single widget
///   - e.g., animation progress, current page in pageview
/// - Use cases
///   - Does not change in complex ways
///   - Other parts of widget tree seldom require access
/// - Methods
///   - Stateful widget
/// ### App State
/// - Definition
///   - Shared across many widgets
///   - e.g., user prefs, login info, notifications, shopping cart, read/unread articles
/// - Use cases
///   - Required by many widgets
///   - Preserve some state between session, e.g., current page in page view
/// - Methods
///   - see 1.1.3
///   - App State should be placed above widgets which use it
///   - Allows sub widgets to access parent state from anywhere in the tree without passing state down through multiple widgets
///
/// ## Approaches
/// ### Provider
///
/// - Recommended by Flutter; Easy to use and understandable
/// - Use Cases
///   - No strong reason to choose another approach
///
/// ### InheritedWidget
/// - Low-level approach in widget tree
/// - Used by high-level approaches under the hood, e.g., InheritedWidget
/// #### InheritedWidget
/// - Provides children in subtree access to its state
/// - Components:
///   - State variables,
///     - e.g., final int itemsInCart;
///   - of method
///     - Provides exact instance of InheritedWidget to child
///   - updateShouldNotify method
///     - Controls when consumers are rebuilt
///     - Has oldWidget as argument, which allows comparing of current and previous state
/// #### Usage
///
/// - InheritedWidget.of(context).stateVariableName
///
/// ### Redux
/// ### Rx
/// ### Hooks
class HelpStateManagement {}
