/// # Animations
///
/// Animation Types:
///
/// ## Drawing-based
///
/// - Use external framework and export to flutter (e..g, Flare, Lottie)
///
/// ## Code-based
///
/// ### Implicit (AnimatedFoo)
///
/// #### BuiltIn
///
/// #### Custom: TweenAnimationBuilder
///
/// ### Explicit (FooTransition)
///
/// - Requires AnimationController, and managing life cycle inside stateful widget
/// Used if any of the following is true:
/// - Repeats forever
/// - Discontinuous animation
/// - Multiple widgets animating together
///
/// #### Built In
///
/// #### Custom
///
/// ##### AnimatedWidget
///
/// - Standalone widget
/// - Use Process:
/// 1. Define class to extend `AnimatedWidget`
/// 2. Override `build` to return desired widget which will be animated
/// 3. Add listenable argument to constructor and pass it up to Animated widget as well. This tells the widget what to look out for.
/// 4. Add getter to make listenable argument usable.
/// 5. Add listenable argument to build method to affect widget properties.
/// 6. Create `AnimationController` within `StateWidget` where animation will be used. Ensure `AnimationController` is initialised in `init` and disposed in `dispose`.
/// 7. Extend `StatefulWidget` with `TickerProviderStateMixin` to get a ticker listener. The ticker listens to frameCallback and determines the duration between the current and last frame, and passes it to the controller to control the animation. Implement it in the controller with vsync.
/// 8. Add methods to direct the controller.
///
/// EXAMPLE:
/// ```
/// /// 1.
/// class FooTransition extends AnimatedWidget {
///   /// 3.
///   const FooTransition(Type listenableArg)
///     : super(listenable: listenableArg);

///   /// 4.
///   Animation<type> get listenableArg => listenable

///   /// 2.
///   @override
///   Widget build(BuildContext context) {
///     /// 5.
///     return ...
///   }

/// class ExampleStateful extends StatefulWidget {

/// }

/// class _ExampleStatefulState extends State<ExampleStateful>
///   with TickerProviderStateMixin {
///     late final AnimationController _controller = AnimationController(vsync: this, ...)
///       ..method1()
///       ..method2();

///     @override
///     void dispose() {
///       _controller.dispose();
///       super.dispose();
///     }
///     @override
///     Widget build(BuildContext context) {
///       return FooTransition(controller: _controller);
///     }
///
/// }
///
/// }
///
/// ```
/// ##### CustomPainter
///
/// - Similar to AnimatedWidget but paints directly to canvas without Widget build paradigm, for complex animations or higher performance. Could cause more performance problems if misused.
/// - CustomPaint is a widget which provides a canvas and takes a CustomPainter to execute paint commands.
/// - Implementation:
/// 1. Define `CustomPaint` widget with painter and child/size in `StateWidget`
/// 2. Define `myPainter` class as extension of `CustomPainter`, override `paint` and `shouldRepaint`.
/// 3. Define paint commands within `paint` function with `canvas.method()`.
/// 4. Define repaint scenarios within `shouldRepaint` if necessary.
/// 5. For animations, pass the controller into the painter and change parameters with progress value.
///
/// ```
/// /// 1.
/// class ExampleStateful extends StatefulWidget {
///
/// }
///
/// class _ExampleStatefulState extends State<ExampleStateful>
/// with TickerProviderStateMixin {
///
///   late final AnimationController _controller = AnimationController(vsync: this, ...)
///       ..method1()
///       ..method2();
///
///   final customPaint = CustomPaint(
///   painter: MyPainter(_controller),
///   child: myWidget(),
///   )
///
///   @override
///   Widget build(BuildContext context) {
///     return customPaint;
/// }
///
/// class MyPainter extends CustomPainter {
///   @override
///   void paint(ui.Canvas canvas, ui.Size size) {
///     /// paint commands
///   }
///
///   @override
///   bool shouldRepaint(CustomPainter oldDelegate) {
///     /// hook called when CustomPainter is rebuilt
///     /// when to repaint, set to true if necessary
///     return false;
///   }
///
/// }
/// ```
/// ##### AnimatedBuilder
/// - Part of parent widget

class HelpAnimations {}
