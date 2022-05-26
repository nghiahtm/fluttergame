import 'package:flutter/material.dart';
import 'package:flutter_mobx/flutter_mobx.dart';
import 'package:modx_application/presentation/math_screen/controller/counter_logic.dart';
import 'package:modx_application/presentation/math_screen/widget/game_over_screen.dart';
import 'package:modx_application/presentation/widgets/elevated_button_widget.dart';

class MyMathPage extends StatefulWidget {
  const MyMathPage({
    Key? key,
  }) : super(key: key);

  @override
  State<MyMathPage> createState() => _MyMathPageState();
}

class _MyMathPageState extends State<MyMathPage> with TickerProviderStateMixin {
  final MathLogic _mathLogic = MathLogic();
  late AnimationController controller;

  @override
  void initState() {
    controller = AnimationController(
      vsync: this,
      duration: const Duration(seconds: 1),
    )..addListener(() {
        if (controller.isCompleted) {
          _mathLogic.isOver = true;
        }
        setState(() {});
      });
    controller.forward();
    super.initState();
  }

  @override
  void dispose() {
    controller.dispose();
    super.dispose();
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Quick Math with MobX'),
      ),
      body: Observer(builder: (context) {
        return _mathLogic.isOver
            ? GameOverScreen(
                controller: controller,
                logic: _mathLogic,
              )
            : Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  LinearProgressIndicator(
                    value: controller.value,
                    minHeight: 10,
                    color: Colors.green,
                    backgroundColor: Colors.grey,
                  ),
                  Padding(
                    padding: const EdgeInsets.only(top: 16.0),
                    child: Observer(builder: (context) {
                      return Text(
                        'Điểm: ${_mathLogic.score}',
                        style: const TextStyle(
                            fontWeight: FontWeight.bold, fontSize: 20),
                      );
                    }),
                  ),
                  const Spacer(),
                  const Text(
                    'Làm chút toán nhé',
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      Observer(builder: (context) {
                        return Text(
                          _mathLogic.number1.toString(),
                          style: Theme.of(context).textTheme.headline4,
                        );
                      }),
                      Observer(builder: (context) {
                        return Text(_mathLogic.operator ?? '');
                      }),
                      Observer(builder: (context) {
                        return Text(
                          _mathLogic.number2.toString(),
                          style: Theme.of(context).textTheme.headline4,
                        );
                      }),
                      const Text('='),
                      Observer(builder: (context) {
                        return Text(
                          _mathLogic.total.toString(),
                          style: Theme.of(context).textTheme.headline4,
                        );
                      }),
                    ],
                  ),
                  Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: [
                      ElevatedButtonWidget(
                          onPressed: () {
                            _mathLogic.correctAnswer(controller);
                          },
                          title: 'Đúng'),
                      ElevatedButtonWidget(
                        onPressed: () => _mathLogic.incorrectAnswer(controller),
                        title: 'Sai',
                        primaryColor: Colors.red,
                      ),
                    ],
                  ),
                  const Spacer(),
                ],
              );
      }),
    );
  }
}
