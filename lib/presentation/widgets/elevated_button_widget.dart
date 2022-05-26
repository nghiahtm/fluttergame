import 'package:flutter/material.dart';

class ElevatedButtonWidget extends StatelessWidget {
  const ElevatedButtonWidget(
      {Key? key,
      required this.onPressed,
      required this.title,
      this.primaryColor})
      : super(key: key);
  final Function() onPressed;
  final String title;
  final Color? primaryColor;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(
      onPressed: onPressed,
      child: Text(title),
      style: ElevatedButton.styleFrom(primary: primaryColor),
    );
  }
}
