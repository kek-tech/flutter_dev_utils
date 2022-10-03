/// TODO
/// # Help with Abstract classes
///
/// * Abstract classes cannot be instantiated.
///
/// ## Use cases
///
/// ### Extending an abstract class to override its function
/// ```
/// abstract class AbstractClass {
///   void function();
/// }
///
/// class Example extends AbstractClass {
///   @override
///   void function() => print('hi');
/// }
/// ```
///
/// ### Extending an abstract class to inherit its instance variable
///
/// * Instance variable has to be declared on instantiation of subclass.
///
/// ```
/// abstract class AbstractClass {
///   final String instanceVar;
///   AbstractClass(this.instanceVar);
/// }
///
/// class Example extends AbstractClass {
///   Example(super.instanceVar);
/// }
/// ```
///
/// ### Implementing an abstract class to override its instance variable
/// ```
/// abstract class AbstractClass {
///   final String instanceVar;
///   AbstractClass(this.instanceVar);
/// }
///
/// class Example implements AbstractClass {
///   @override
///   final String instanceVar = 'const';
///   Example();
/// }
/// ```
/// ### Mixing in an abstract class to inherit its instance variable
///
/// * Declaration of instance variable not necessary on instantiation of subclass
///
/// ```
/// abstract class AbstractClass {
///   String? instanceVar;
/// }
///
/// class Example with AbstractClass {
///   Example();
/// }
/// ```
///
/// ### Implementing an abstract class to inherit its members (interface)
///
/// * An interface is a superclass that acts as a blueprint for a subclass
/// * Implementing an abstract class forces the subclass to override all members of the super
/// * See HelpInterface for more details on `implements`
///
/// ```
/// abstract class AbstractClass {
///   String? instanceVariable;
///
///   void _function();
/// }
///
/// class Example implements AbstractClass {
///   @override
///   void _function() => null;
///
///   @override
///   String? instanceVariable = '';
/// }
/// ```

abstract class HelpAbstractClass {}
