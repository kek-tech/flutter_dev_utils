/// # Help with Focus System
///
/// ## Overview
///
/// - Directs keyboard input
/// - Terminology:
///   - Primary focus
///     - Farthest node away from root of tree that has focus
///     - Key events propagate from primary focus node to ancestors
///   - Focus chain
///     - Ordered list of nodes along branch from primary focus node to root
///   - Focus Traversal
///     - Moving focus from one node to another predictably
///     - E.g., pressing tab on keyboard
///
/// ## Elements
///
/// ### Focus Tree
///
/// - Sparsely mirrors widget tree
/// - Contains focus nodes
///
/// ### Focus Node
///
/// - Represents widget that can receive focus
/// - Has focus: part of the focus chain
///   - Handles key events only when it has focus
///
/// ### Focus Scope
///
/// - Focus node which contains a group of focus nodes
/// - Limits focus to its nodes
/// - Contains info about which nodes were previously focused in its subtree
///
/// ### Focus
/// - Widget that owns and manages a focus node
/// -
class HelpFocus {}
