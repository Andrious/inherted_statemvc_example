///
///
///

import 'package:inheritedstatemvc_app/src/controller.dart';

import 'package:inheritedstatemvc_app/src/view.dart';

///
class InheritCat extends StatefulWidget {
  ///
  const InheritCat({Key? key, required this.child}) : super(key: key);

  ///
  final Widget? child;

  @override
  State<StatefulWidget> createState() => _InheritCatState();
}

class _InheritCatState extends InheritedStateMVC<InheritCat, _CatInherited> {
  _InheritCatState()
      : super(
          controller: CatController(),
          inheritedWidget: (child) => _CatInherited(child: child),
        );
  @override
  Widget buildChild(context) => widget.child!;
}

class _CatInherited extends InheritedWidget {
  const _CatInherited({Key? key, required Widget child})
      : super(key: key, child: child);
  @override
  bool updateShouldNotify(oldWidget) => true;
}
