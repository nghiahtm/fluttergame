import 'package:flutter/material.dart';

import 'presentation/math_screen/math_page.dart';

class MathApp extends StatelessWidget {
  const MathApp({Key? key}) : super(key: key);
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: const MyMathPage(),
    );
  }
}
