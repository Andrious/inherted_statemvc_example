import 'package:inheritedstatemvc_app/src/controller.dart';

import 'package:inheritedstatemvc_app/src/view.dart';

///
class RandomDog extends StatefulWidget {
  ///
  const RandomDog({Key? key}) : super(key: key);
  @override
  State<StatefulWidget> createState() => _RandomDogState();
}

class _RandomDogState extends ImageAPIStateMVC<RandomDog> {
  _RandomDogState()
      : super(
          controller: DogController(),
          uri: Uri(
            scheme: 'https',
            host: 'dog.ceo',
            path: 'api/breeds/image/random/1',
          ),
          message: 'message',
        );
}
