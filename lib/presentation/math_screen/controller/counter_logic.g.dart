// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'counter_logic.dart';

// **************************************************************************
// StoreGenerator
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, unnecessary_brace_in_string_interps, unnecessary_lambdas, prefer_expression_function_bodies, lines_longer_than_80_chars, avoid_as, avoid_annotating_with_dynamic, no_leading_underscores_for_local_identifiers

mixin _$MathLogic on _MathLogic, Store {
  Computed<int>? _$totalComputed;

  @override
  int get total => (_$totalComputed ??=
          Computed<int>(() => super.total, name: '_MathLogic.total'))
      .value;
  Computed<bool>? _$isCorrectComputed;

  @override
  bool get isCorrect => (_$isCorrectComputed ??=
          Computed<bool>(() => super.isCorrect, name: '_MathLogic.isCorrect'))
      .value;
  Computed<bool>? _$isIncorrectComputed;

  @override
  bool get isIncorrect =>
      (_$isIncorrectComputed ??= Computed<bool>(() => super.isIncorrect,
              name: '_MathLogic.isIncorrect'))
          .value;

  late final _$number1Atom = Atom(name: '_MathLogic.number1', context: context);

  @override
  int get number1 {
    _$number1Atom.reportRead();
    return super.number1;
  }

  @override
  set number1(int value) {
    _$number1Atom.reportWrite(value, super.number1, () {
      super.number1 = value;
    });
  }

  late final _$number2Atom = Atom(name: '_MathLogic.number2', context: context);

  @override
  int get number2 {
    _$number2Atom.reportRead();
    return super.number2;
  }

  @override
  set number2(int value) {
    _$number2Atom.reportWrite(value, super.number2, () {
      super.number2 = value;
    });
  }

  late final _$operatorAtom =
      Atom(name: '_MathLogic.operator', context: context);

  @override
  String? get operator {
    _$operatorAtom.reportRead();
    return super.operator;
  }

  @override
  set operator(String? value) {
    _$operatorAtom.reportWrite(value, super.operator, () {
      super.operator = value;
    });
  }

  late final _$scoreAtom = Atom(name: '_MathLogic.score', context: context);

  @override
  int get score {
    _$scoreAtom.reportRead();
    return super.score;
  }

  @override
  set score(int value) {
    _$scoreAtom.reportWrite(value, super.score, () {
      super.score = value;
    });
  }

  late final _$scrorePreAtom =
      Atom(name: '_MathLogic.scrorePre', context: context);

  @override
  int get scrorePre {
    _$scrorePreAtom.reportRead();
    return super.scrorePre;
  }

  @override
  set scrorePre(int value) {
    _$scrorePreAtom.reportWrite(value, super.scrorePre, () {
      super.scrorePre = value;
    });
  }

  late final _$isOverAtom = Atom(name: '_MathLogic.isOver', context: context);

  @override
  bool get isOver {
    _$isOverAtom.reportRead();
    return super.isOver;
  }

  @override
  set isOver(bool value) {
    _$isOverAtom.reportWrite(value, super.isOver, () {
      super.isOver = value;
    });
  }

  late final _$_MathLogicActionController =
      ActionController(name: '_MathLogic', context: context);

  @override
  void correctAnswer(AnimationController controller) {
    final _$actionInfo = _$_MathLogicActionController.startAction(
        name: '_MathLogic.correctAnswer');
    try {
      return super.correctAnswer(controller);
    } finally {
      _$_MathLogicActionController.endAction(_$actionInfo);
    }
  }

  @override
  void incorrectAnswer(AnimationController controller) {
    final _$actionInfo = _$_MathLogicActionController.startAction(
        name: '_MathLogic.incorrectAnswer');
    try {
      return super.incorrectAnswer(controller);
    } finally {
      _$_MathLogicActionController.endAction(_$actionInfo);
    }
  }

  @override
  void reset() {
    final _$actionInfo =
        _$_MathLogicActionController.startAction(name: '_MathLogic.reset');
    try {
      return super.reset();
    } finally {
      _$_MathLogicActionController.endAction(_$actionInfo);
    }
  }

  @override
  void random() {
    final _$actionInfo =
        _$_MathLogicActionController.startAction(name: '_MathLogic.random');
    try {
      return super.random();
    } finally {
      _$_MathLogicActionController.endAction(_$actionInfo);
    }
  }

  @override
  String toString() {
    return '''
number1: ${number1},
number2: ${number2},
operator: ${operator},
score: ${score},
scrorePre: ${scrorePre},
isOver: ${isOver},
total: ${total},
isCorrect: ${isCorrect},
isIncorrect: ${isIncorrect}
    ''';
  }
}
