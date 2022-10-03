/// # Help with Singletons in Flutter & Dart.
///
/// Singletons are classes where there can only be one instance, e.g. FirebaseAuth.instance
///
/// ## Creating Singletons
///
/// There are a few ways in which Singletons can be created:
///
/// ### Static field
///
/// Shortest and cleanest method.
///
/// ```
/// class SingletonStaticFinal {
///   SingletonStaticFinal._privateConstructor();
///
///   static final SingletonStaticFinal instance = SingletonStaticFinal._privateConstructor();
/// }
///
/// SingletonStaticFinal three = SingletonStaticFinal.instance;
/// ```
///
/// ### Static field with getter
///
/// Having the getter would allow you to do other work before returning the instance.
///
/// ```
/// class SingletonGetterExample {
///   SingletonGetterExample._privateConstructor();
///   static final SingletonGetterExample _instance = SingletonGetterExample._privateConstructor();
///   static SingletonGetterExample get instance {
///     return _instance;
///   }
/// }
///
/// SingletonGetterExample two = SingletonGetterExample.instance;
/// ```
///
/// ### Factory
///
/// When instantiated, looks like any other class.
/// You could use this one if you want to hide the fact that it is a singleton (and leave the option to make it not be a singleton in the future). You could also pass in arguments in the constructor.
///
/// ```
/// class SingletonFactoryExample {
///   SingletonFactoryExample._privateConstructor();
///
///   static final SingletonFactoryExample _instance = SingletonFactoryExample._privateConstructor();
///
///   factory SingletonFactoryExample() {
///     return _instance;
///   }
/// }
///
/// SingletonFactoryExample one = SingletonFactoryExample();
/// ```
///
/// ## Usage
///
/// Singletons are often a reasonable solution for library or package design,
/// but care should be taken when using it in application code.
///
/// ### Advantages
/// * Flutter apps have deeply nested widget trees; and singletons make it easy to access the objects from any widget.
///
/// ### Disadvantages
/// #### Singletons are hard to test
///
/// * See flutter_dev_utils/example/singleton/test_singleton.dart
/// * Also see http://misko.hevery.com/2008/08/17/singletons-are-pathological-liars/ for in depth explanation
///
/// #### Singletons are Implicit Dependencies
///
/// * May become difficult to spot for uninitiated when code base becomes large
///
/// ```
/// class FirebaseAuthRepository {
///   Future<void> signOut() => FirebaseAuth.instance.signOut();
/// }
/// class FirebaseAuthRepository {
///   // easy to find the dependencies here,
///   // even if this class becomes very large
///   const FirebaseAuthRepository(this._auth);
///   final FirebaseAuth _auth;

///   Future<void> signOut() => _auth.signOut();
/// }
/// ```
///
/// #### Instance Lifecycle
///
/// * When we initialize a singleton instance, it will remain alive until the end of time (a.k.a. when the application is closed). And if the instance consumes a lot of memory or keeps an open network connection, we can't release it early if we want to.
///
/// #### Thread Safety
///
/// ##### References
/// * https://codewithandrea.com/articles/flutter-singletons/#1-singletons-are-hard-to-test
///
abstract class HelpSingleton {}
