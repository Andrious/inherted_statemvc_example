///
///
///

import 'package:inheritedstatemvc_app/src/controller.dart';

import 'package:inheritedstatemvc_app/src/view.dart';

///
class InheritFox extends StatefulWidget {
  ///
  const InheritFox({Key? key, required this.child}) : super(key: key);

  ///
  final Widget? child;

  @override
  State<StatefulWidget> createState() => _InheritFoxState();
}

class _InheritFoxState extends InheritedStateMVC<InheritFox, _FoxInherited> {
  _InheritFoxState()
      : super(
          controller: FoxController(),
          inheritedWidget: (child) => _FoxInherited(child: child),
        );
  @override
  Widget buildChild(context) => widget.child!;
}

class _FoxInherited extends InheritedWidget {
  const _FoxInherited({Key? key, required Widget child})
      : super(key: key, child: child);
  @override
  bool updateShouldNotify(oldWidget) => true;
}
