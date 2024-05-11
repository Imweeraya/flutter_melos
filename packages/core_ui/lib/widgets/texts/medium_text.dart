import 'package:flutter/material.dart';

class MediumText extends StatelessWidget {
  MediumText({super.key, required this.title , this.color});

  String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
            fontSize: 18,
            color: color ?? const Color.fromARGB(255, 35, 35, 35),
            fontWeight: FontWeight.w500));
  }
}
