import 'dart:math';
import 'package:flutter/material.dart';
import 'package:mobx/mobx.dart';
import 'package:modx_application/use_case/math_logic_use_case.dart';
part 'counter_logic.g.dart';

class MathLogic = _MathLogic with _$MathLogic;

abstract class _MathLogic with Store {
  @observable
  int number1 = Random().nextInt(6) + 1;
  @observable
  int number2 = Random().nextInt(6) + 1;
  @observable
  String? operator = opertators[Random().nextInt(2) + 1];
  @observable
  int score = 0;
  @observable
  int scrorePre = 0;
  @computed
  int get total => MathLogicUseCase.getTotal(operator ?? '', number1, number2);
  @computed
  bool get isCorrect =>
      MathLogicUseCase.isCorrect(operator ?? '', number1, number2, total);
  @computed
  bool get isIncorrect =>
      !MathLogicUseCase.isCorrect(operator ?? '', number1, number2, total);
  @observable
  bool isOver = false;

  @action
  void correctAnswer(AnimationController controller) {
    if (isCorrect) {
      score++;
      controller
        ..reset()
        ..forward()
        ..addListener(() {
          if (controller.isCompleted) {
            isOver = true;
          }
        });
      random();
    } else {
      scrorePre = score;
      isOver = true;
      score = 0;
    }
  }

  @action
  void incorrectAnswer(AnimationController controller) {
    if (isIncorrect) {
      score++;
      controller
        ..reset()
        ..forward()
        ..addListener(() {
          if (controller.isCompleted) {
            isOver = true;
          }
        });
      random();
    } else {
      scrorePre = score;
      isOver = true;
      score = 0;
    }
  }

  @action
  void reset() {
    isOver = false;
    random();
    score = 0;
    scrorePre = 0;
  }

  @action
  void random() {
    number1 = Random().nextInt(6) + 1;
    number2 = Random().nextInt(6) + 1;
    operator = opertators[Random().nextInt(2) + 1];
  }
}

Map<int, String> opertators = {0: "-", 1: "X", 2: "+"};
