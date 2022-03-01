// Copyright 2022 Andrious Solutions Ltd. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.

import 'package:inheritedstatemvc_app/src/controller.dart';

import 'package:inheritedstatemvc_app/src/view.dart';

/// To be passed to the runApp() function.
/// This is the app's first StatefulWidget.
class MyApp extends AppStatefulWidgetMVC {
  ///
  const MyApp({Key? key}) : super(key: key);

  /// This is the App's State object
  @override
  AppStateMVC createState() => _MyAppState();
}

///
class _MyAppState extends AppStateMVC<MyApp> {
  factory _MyAppState() => _this ??= _MyAppState._();
  _MyAppState._() : super(controller: AppController());
  static _MyAppState? _this;

  /// Optionally you can is the framework's buildApp() function
  /// instead of its build() function and allows for the InheritWidget feature
  @override
  Widget buildApp(BuildContext context) => const MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomePage(),
      );
}
