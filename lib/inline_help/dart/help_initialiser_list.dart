/// # Initialiser List (:)
///
/// Used to:
/// - Initialise list of expressions that can:
///   - access constructor parameters
///   - assign to instance fields (even final instance fields!)
/// - Call other constructors
///   - e.g., superclass
/// - Assert constructor parameters
///
/// NOTE:
/// - Initialiser list is executed before constructor body
/// - Use `this.instanceVariable` when there is a name conflict, else omit
class HelpInitialiserList {}
