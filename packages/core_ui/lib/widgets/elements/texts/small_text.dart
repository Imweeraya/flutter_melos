import 'package:flutter/material.dart';

class SmallText extends StatelessWidget {
  SmallText({super.key, required this.title , this.color});

  String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
            fontSize: 16,
            color: color ?? const Color.fromARGB(255, 35, 35, 35),
            fontWeight: FontWeight.bold));
  }
}
