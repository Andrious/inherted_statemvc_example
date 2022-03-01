import 'package:inheritedstatemvc_app/src/controller.dart';

import 'package:inheritedstatemvc_app/src/view.dart';

///
class InheritDog extends StatefulWidget {
  ///
  const InheritDog({Key? key, required this.child}) : super(key: key);

  ///
  final Widget? child;

  @override
  State<StatefulWidget> createState() => _InheritDogState();
}

class _InheritDogState extends InheritedStateMVC<InheritDog, _DogInherited> {
  _InheritDogState()
      : super(
          controller: DogController(),
          inheritedWidget: (child) => _DogInherited(child: child),
        );
  @override
  Widget buildChild(context) => widget.child!;
}

class _DogInherited extends InheritedWidget {
  const _DogInherited({Key? key, required Widget child})
      : super(key: key, child: child);
  @override
  bool updateShouldNotify(oldWidget) => true;
}
