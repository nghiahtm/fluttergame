import 'package:flutter/material.dart';
import 'package:modx_application/presentation/math_screen/controller/counter_logic.dart';
import 'package:modx_application/presentation/widgets/elevated_button_widget.dart';

class GameOverScreen extends StatelessWidget {
  const GameOverScreen(
      {Key? key, required this.logic, required this.controller})
      : super(key: key);
  final MathLogic logic;
  final AnimationController controller;
  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text('Game over'),
          Text('Số điểm của bạn là:${logic.scrorePre}'),
          ElevatedButtonWidget(
              onPressed: () {
                logic.reset();
                controller
                  ..reset()
                  ..forward()
                  ..addListener(() {
                    if (controller.isCompleted) {
                      logic.isOver = true;
                    }
                  });
              },
              title: 'Chơi lại')
        ],
      ),
    );
  }
}
