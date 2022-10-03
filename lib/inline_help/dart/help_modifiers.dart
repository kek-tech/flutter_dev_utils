/// # Modifiers
///
/// ## static
///
/// - modifies members of a class (variables, functions)
///   - only affects the class, not on instances of the class
///
/// ## final
///
/// - modifies variables (`var, int, double`)
///   - must be assigned on init
///   - shallow immutability: e.g., final collection members can be mutable, collection itself is immutable
///
/// ## const
///
/// - modifies values and objects (`[1,2,3], Point(2,3)`)
///   - compile time constant: state can be determined at compile time and is then frozen (e.g., `1+2` is compile time const, `DateTime.now()` is not)
///   - deep (transitive) immutability: e.g., const collection members are immutable, recursively
///   - canonicalised values and objects: all assignments of the const value/object will refer to the same instance
class HelpModifiers {}
