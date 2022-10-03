/// # Asynchronous Programming
/// Completion of other work while waiting for a complex operation to finish.
/// The complex operation is usually set to be the asynchronous function.
///
/// ## Terminology
/// - Synchronous operation: Blocks other operations from executing till it completes
/// - Synchronous function: Only syncOp
/// - Asynchronous operation: Allows other operations to execute before it completes
/// - Asynchronous function: >=1 asyncOp
///
/// ## futures
/// - `future`: instance of Future class
///   - Represents result of asyncOp:
///     - Uncompleted, waiting for asyncOp to finish or throw an error
///     - Completed, returns value for successful asyncOp, or throw error
///     -
/// - `Future<ReturnValueType>`: class returning future value of ReturnValueType
///   -
///
/// ## async
/// ## await
///
/// # Generators (*)
/// - Function which returns multiple values
/// - e.g., sync function returns `int`, async function returns `Future<int>`, sync generator returns `Iterable<int>`, async generator returns `Stream<int>`
/// - Uses `yield` instead of `return`

class HelpAsync {}
