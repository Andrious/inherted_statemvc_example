///
///
///

import 'package:inheritedstatemvc_app/src/controller.dart';

import 'package:inheritedstatemvc_app/src/view.dart';

///
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
          inheritedWidget: (child) => _BirdInherited(child: child),
        );
  @override
  Widget buildChild(context) => widget.child!;
}

class _BirdInherited extends InheritedWidget {
  const _BirdInherited({Key? key, required Widget child})
      : super(key: key, child: child);
  @override
  bool updateShouldNotify(oldWidget) => true;
}
