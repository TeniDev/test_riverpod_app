import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/config.dart';

final userInChatProvider = StreamProvider<List<String>>((ref) async* {
  final names = <String>[];
  yield [];

  await for (final name in RandomGenerator.randomNameStream()) {
    names.add(name);
    yield names;
  }
});
