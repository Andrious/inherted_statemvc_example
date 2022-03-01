///
///
///

import 'package:inheritedstatemvc_app/src/controller.dart';

import 'package:inheritedstatemvc_app/src/view.dart';

///
class RandomBird extends StatefulWidget {
  ///
  const RandomBird({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _RandomBirdState();
}

class _RandomBirdState extends ImageAPIStateMVC<RandomBird> {
  _RandomBirdState()
      : super(
          controller: BirdController(),
          uri: Uri(
            scheme: 'https',
            host: 'shibe.online',
            path: 'api/birds',
          ),
        );
}
