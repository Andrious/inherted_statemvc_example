// Copyright 2022 Andrious Solutions Ltd. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
///
///  The 'Animal' Controller to call the appropriate InheritedWidget.
///

import 'package:inheritedstatemvc_app/src/view.dart';

///
class InheritController extends ControllerMVC {
  /// Link this Controller's Widget to a specific InheritedWidget
  /// The InheritedWidget is the first State object it registered with.
  @override
  bool widgetInherited(BuildContext? context) =>
      states.first.widgetInherited(context);

  /// Rebuild the InheritedWidget to also rebuild its dependencies.
  void newAnimals() => states.first.buildInherited();
}
