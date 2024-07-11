import 'dart:math';

class RandomManager {
  static final Random _random = Random();

  int getNextInt(int length) {
    return _random.nextInt(length);
  }
}
