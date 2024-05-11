import 'package:flutter/material.dart';

class PrimaryButton extends StatelessWidget {
  const PrimaryButton({super.key, required this.title, this.color});

  final String title;
  final Color? color;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          backgroundColor: Color.fromARGB(255, 233, 233, 233),
          shape: const RoundedRectangleBorder(
              borderRadius: BorderRadius.all(Radius.circular(4)))),
      child: Text(
        title,
        style: TextStyle(color: Theme.of(context).primaryColor, fontSize: 15),
      ),
    );
  }
}
