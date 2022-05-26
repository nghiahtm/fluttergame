import 'dart:math';

class MathLogicUseCase {
  static int getTotal(String operator, int number1, int number2) {
    int? number;
    int? result;
    switch (operator) {
      case '-':
        result = number1 - number2;
        return number = Random().nextInt(result) + (result - 1);
      case 'X':
        result = number1 * number2;
        return number = Random().nextInt(result) + (result - 1);
      case '+':
        result = number1 + number2;
        return number = Random().nextInt(result) + (result - 1);
      default:
        return number ?? 0;
    }
  }

  static bool isCorrect(String operator, int number1, int number2, int total) {
    switch (operator) {
      case '-':
        return total == number1 - number2;
      case 'X':
        return total == number1 * number2;
      case '+':
        return total == number1 + number2;
      default:
        return false;
    }
  }
}
