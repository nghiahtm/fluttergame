import 'dart:math';

class RandomNumber {
  int number1 = Random().nextInt(6) + 1;
  int number2 = Random().nextInt(6) + 1;

  RandomNumber({this.number1 = 0, this.number2 = 0});
}
