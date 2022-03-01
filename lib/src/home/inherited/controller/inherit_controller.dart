///
///
///

import 'package:inheritedstatemvc_app/src/view.dart';

///
class InheritController extends ControllerMVC {
  /// Link this Controller's Widget to InheritedWidget
  @override
  bool widgetInherited(BuildContext? context) =>
      states.first.widgetInherited(context);

  /// Rebuild the InheritedWidget to also rebuild its dependencies.
  void newAnimals() => states.first.buildInherited();
}
