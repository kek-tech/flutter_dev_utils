/// # Help with Architecture Patterns
/// Architecture patterns are not an either/or choice for a project. Multiple patterns can exist within the same project, so defining conventions for these patterns can help structure the code base for readability, development, and testing. However, it should be noted that exceptions always exist to strict guidelines, so don't try to enforce a pattern onto an ambiguous chunk of code if it is already easy to understand.
///
/// "If you put ten software architects into a room and have them discuss what the MVC/MVP/MVVM/MVCVM pattern is, you will end up with twelve different opinions."
///
/// ## MVC
///
/// - Components
///   - Model: Acts as the model for data
///   - View: Deals with the view to the user which can be the UI
///   - Controller: Getters and setters in controller can be called by View
///
/// M <-> C <- V
///
/// ### Testing
///
/// MVC Model component can be tested separately from the user.
///
/// ## MVP
///
/// - Components:
///   - Model & View: Same as MVC
///   - Presenter: Notifies View of changes in model instead of getting called by View
/// - E.g.,
///
/// M <-> P -> V
///
/// ## MVVM
///
/// - Components:
///   - Model & View: Same as MVC
///   - View Model: Combination of Presenter & Controller. Changes in Model represented in View, changes in View represented in Model.
///     - E.g., Change notifier with getters and setters
///
/// M <-> VM <-> V
/// - The difference here is the presence of View Model. It is kind of an implementation of Observer Design Pattern, where changes in the model are represented in the view as well, by the VM. Eg: If a slider is changed, not only the model is updated but the data which may be a text, that is displayed in the view is updated as well. So there is a two-way data binding.
///
/// In MVVM, the view is the entry point to the Application. MVVM is easy for separate unit testing, and code is event-driven.
///
/// ## MVCVM
///
/// The basic MVCVM guidelines we follow are:
/// * Views display a certain shape of data. They have no idea where the data comes from.
/// * ViewModels hold a certain shape of data and commands, they do not know where the data, or code, comes from or how it is displayed.
/// * Models hold the actual data (various context, store or other methods)
/// * Controllers listen for, and publish, events. Controllers provide the logic that controls what data is seen and where. Controllers provide the command code to the ViewModel so that the ViewModel is actually reusable.
///
/// ## Getting Started
///
/// flutter run lib/unarchitectured_main.dart
/// flutter run lib/mvc/main.dart
/// flutter run lib/mvvm/main.dart

/// https:///codewithandrea.com/articles/flutter-app-architecture-riverpod-introduction/
class HelpAppArchitecture {}
