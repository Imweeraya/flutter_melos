import 'package:flutter/material.dart';

class DetailText extends StatelessWidget {
  DetailText({super.key, required this.title, this.color});

  String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return Text(
      title,
      style: TextStyle(
          color: color ?? Colors.white,
          fontWeight: FontWeight.w400,
          fontSize: 16),
    );
  }
}
