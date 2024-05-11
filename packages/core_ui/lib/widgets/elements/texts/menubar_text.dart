import 'package:flutter/material.dart';

class MenubarText extends StatelessWidget {
  MenubarText({super.key, required this.title , this.color});

  String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(title,
        style: TextStyle(
            fontSize: 12,
            color: color ?? Color.fromARGB(255, 255, 255, 255),
            fontWeight: FontWeight.bold));
  }
}
