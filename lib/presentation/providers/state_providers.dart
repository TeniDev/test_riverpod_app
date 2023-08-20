import 'package:flutter_riverpod/flutter_riverpod.dart';

import '../../config/config.dart';

final counterProvider = StateProvider<int>((ref) {
  return 0;
});

final isDarkModeProvider = StateProvider<bool>((ref) {
  return false;
});

final randomNameProvider = StateProvider<String>((ref) {
  return RandomGenerator.getRandomName();
});
