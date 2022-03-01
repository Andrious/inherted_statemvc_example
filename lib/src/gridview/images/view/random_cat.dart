///
///
///

import 'package:inheritedstatemvc_app/src/controller.dart';

import 'package:inheritedstatemvc_app/src/view.dart';

///
class RandomCat extends StatefulWidget {
  ///
  const RandomCat({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _RandomCatState();
}

class _RandomCatState extends ImageAPIStateMVC<RandomCat> {
  _RandomCatState()
      : super(
          controller: CatController(),
          uri: Uri(
            scheme: 'https',
            host: 'aws.random.cat',
            path: 'meow',
          ),
          message: 'file',
        );
}