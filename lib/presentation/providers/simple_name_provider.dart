import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/config.dart';

// Provider de solo lectura
final simpleNameProvider = Provider.autoDispose<String>((ref) {
  return RandomGenerator.getRandomName();
});

// El autodispose es para cuando ya no se este usando el provider, se limpia