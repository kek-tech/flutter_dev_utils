/// # Help with Dart syntax
///
/// ## Multiple if
/// ```
///   (() {
///     /// your code here
///   }())
/// ```
///
/// ## Spread Operator
/// - Can be used to return multiple widgets
/// ```
/// if (Responsive.isDesktop()) ...[
///     Text('Desktop')
///     Text('Mode')
///   ]
/// ```
///
/// ## Cascade Notation
///
/// Prevents repeating target for several call methods on same object.
///
/// ```
/// List list = [];
/// list.add(color1);
/// list.add(color2);
///
/// list
///   ..add(color1)
///   ..add(color2);
/// ```
///
/// ## Arrow
/// ```
///     => expression,
///     /// is equivalent to
///     {return expression;},
/// ```
///
/// ## Closure/Inline Functions
/// ```
///     () => expression
///
///     /// is equivalent to
///     function () {
///         return expression
///     }
/// ```
///
/// ## Anonymous Multiline Function
/// ```
///   () {expression}
///   /// is equivalent to
///   function () {
///       return expression
///   }
/// ```
class HelpDartSyntax {}
