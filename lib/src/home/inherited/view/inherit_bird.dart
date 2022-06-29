// Copyright 2022 Andrious Solutions Ltd. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
///
///  Contains the InheritedWidget for updating the Bird Image widgets.
///

import 'package:inheritedstatemvc_app/src/controller.dart';

import 'package:inheritedstatemvc_app/src/view.dart';

/// This StatefulWidget stores an InheritedWidget
class InheritBird extends StatefulWidget {
  ///
  const InheritBird({
    Key? key,
    required this.child,
  }) : super(key: key);

  ///
  final Widget? child;

  @override
  State<StatefulWidget> createState() => _InheritBirdState();
}

class _InheritBirdState extends InheritedStateMVC<InheritBird, _BirdInherited> {
  _InheritBirdState()
      : super(
          controller: BirdController(),
          inheritedBuilder: (child) => _BirdInherited(child: child),
        );
  @override
  Widget buildChild(context) => widget.child!;
}

/// The InheritedWidget assigned 'dependent' child widgets.
class _BirdInherited extends InheritedWidget {
  const _BirdInherited({Key? key, required Widget child})
      : super(key: key, child: child);
  @override
  bool updateShouldNotify(oldWidget) => true;
}
