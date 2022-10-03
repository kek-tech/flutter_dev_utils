/// # Help with important concepts in Flutter
///
/// ## Widgets
///
///
/// ### StatelessWidget
///
/// - State in widget immutable once built
/// - Explanation:
///   - Once widget builds element,
///   - Data and functions which exist in widget cannot change what is on the screen
/// - Components:
///   - Widget Tree
///     - Stateless Widget
///       - Builds stateless element and mounts it
///   - Element Tree
///     - Stateless Element
/// - Lifecycle Events
///   - build() called when
///     - Widget created for first time
///     - Parent changes/updates
///     - InheritedWidget changes
///
/// ### StatefulWidget
/// - State in widget mutable after build
/// - Explanation:
///   - Once widget builds element,
///   - Data and functions which exist in widget can change
/// - Components:
///   - Widget Tree
///     - Stateful Widget
///       1 Creates stateful element and mounts it
///       3 Creates state object
///     - State Widget
///       4 Holds state and used as reference for stateful element
///       5 Builds stateless element and mounts it
///       6 Change in state triggers rebuild
///   - Element Tree
///     - Stateful Element
///       2 Requests state object from stateful widget
///     - Stateless Element
/// - Lifecycle Events
///   - build() called when
///     - Stateful changes but State persists
///     - State changes
///   - initState() called when
///     - object inserted into WT
///   - dispose() called when
///     - object removed from WT permanently
///   - didChangeDependencies() called when
///     - State changes
///   - didUpdateWidget() called when
///     - Stateful config changes
///   - deactivate() called when
///     - object removed from WT temp
///   - setState() triggers
///     - State change
///
///
/// ## Widget, Elements and RenderObject Trees
///
/// ### Widget Tree (WT) - Configure
///
/// - Immutable description of what to show on screen
/// - Creates elements to mount in element tree
///
/// ### Element Tree (ET) - Lifecycle
///
/// - Instantiation of WT
/// - Mutable description of what to show on screen
///
/// ### RenderObject Tree (RT) - Paint
///
/// - What is currently shown on screen
/// - Handles size, layout and rendering
///
/// ## Widget Keys
/// ### When to use
/// - When state needs to be preserved in widget tree
///   - e.g., Rearranging items in a list
/// ## Where to use
/// - Top of widget subtree which is being rearranged
///   - e.g., if items in list have padding, key should be assigned to padding
///
/// ### Which to use
/// - Depends on state to be preserved
/// - ValueKey
///   - When state of each widget being rearranged is unique
/// - UniqueKey
///   - When state of widgets may not be unique
/// - ObjectKey
///   - When state attributes may be common amongst widgets, but combination of them is unique
/// - PageStorageKey
///   - Stores scroll location
/// - GlobalKey
///   - When widget needs to change parents without losing state
///     - e.g., same widget on two different pages
///   - When need to access info about widget in different part of the tree
///     - e.g., do not want other widgets to be able to access password widget
///   - NOTE: usually better way to avoid GlobalKey
///     - e.g., InheritedWidget, redux/block pattern
/// - DO NOT
///   - Set random number in key as everytime widget is rebuilt, a number different from element key is generated, making it redundant
///
/// ### Mechanism
/// - Flutter's element-widget matching mechanism checks for same type
/// - Rearranging Stateless Widgets
///   1. Stateless
/// - Rearranging Stateful Widgets
class HelpFlutter {}
