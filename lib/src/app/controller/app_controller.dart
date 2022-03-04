// Copyright 2022 Andrious Solutions Ltd. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
///
///  The App's Event Handler
///
///

import 'package:inheritedstatemvc_app/src/view.dart';

/// This is the 'app level' State Object Controller.
class AppController extends ControllerMVC {
  /// A factory constructor for a single instance of this class.
  factory AppController() => _this ??= AppController._();
  AppController._();
  static AppController? _this;

  /// Initialize any 'time-consuming' operations at the beginning.
  /// Initialize asynchronous items essential to the Mobile Applications.
  @override
  Future<bool> initAsync() async {
    // For demonstration purposes only, wait for 10 seconds at startup.
    // Comment out if you're tired of waiting. :)
    /// In production, this is where databases are opened, logins attempted, etc.
    return Future.delayed(const Duration(seconds: 10), () {
      return true;
    });
  }

  /// Supply an 'error handler' routine if something goes wrong
  /// in the corresponding initAsync() routine.
  /// Returns true if the error was properly handled.
  @override
  bool onAsyncError(FlutterErrorDetails details) {
    return false;
  }
}
