// Copyright 2022 Andrious Solutions Ltd. All rights reserved.
// Use of this source code is governed by a BSD-style license that can be
// found in the LICENSE file.
///
///  This widget works with the free Bird API.
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
