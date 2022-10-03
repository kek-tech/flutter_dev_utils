/// # Sizing
/// ## Sizes, Constraints and Positions
/// ### Rules
///   - Constraints go down
///   - Sizes go up
///   - Parent sets position
/// ### Process
/// For an arbitrary widget X, its parent Y, and its children Z
/// 1. Y passes its constraints down to X
///    - min/max height/width
/// 2. X passes its constraints down to Z
/// 3. X asks Z what size they are
///    - width/height
/// 4. X sets positions of Z
/// 5. X tells Y its final size
///
/// ### Limitations
/// - Size defined in widget only within constraints of parent
/// - Widget does not know/decide its position
/// - Defining alignment must be specific or child size may be ignored
///
/// ### Mechanisms
/// - RenderBox
///   - Underlying object used to render widgets
///
/// ### Types of Constraints
/// #### As Big As Possible
/// - e.g.,
///   - Center
///   - ListView
///   - Container (null width and height)
/// #### Same Size if Possible
/// - e.g.,
///   - Transform
///   - Opacity
///   - Container (non null width or height)
/// #### Fixed Size if Possible
/// - e.g.,
///   - Image
///   - Text
/// ## BoxConstraints
/// - Passed to Container.constraints
/// - Can specify max/min width/height
///
/// ## LayoutBuilder
/// - Provides parent constraints to child
/// - Builds at layout time
///
/// ## FractionallySizedBox
/// - Provides percentage of parent size to child
/// ```
/// ParentWidget(
///   child: FractionallySizedBox(
///         widthFactor: 0.5,
///         heightFactor: 0.5,
///         child: Container(
///           /// this container won't be larger than
///           /// half of its parent size
///         ),
///   )
/// )
/// ```
class HelpSizing {}
