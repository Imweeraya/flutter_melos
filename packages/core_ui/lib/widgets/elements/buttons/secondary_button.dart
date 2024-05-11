import 'package:core_ui/widgets/elements/texts/medium_text.dart';
import 'package:flutter/material.dart';

class SecondaryButtom extends StatelessWidget {
  const SecondaryButtom({super.key , required this.icon , required this.title ,required this.buttonColor , this.iconColor , this.textColor});

  final Color buttonColor;
  final IconData icon;
  final Color? iconColor;
  final String title;
  final Color? textColor;

  @override
  Widget build(BuildContext context) {
    return TextButton(
      onPressed: () {},
      style: TextButton.styleFrom(
          backgroundColor: buttonColor,
          shape: RoundedRectangleBorder(
            borderRadius: BorderRadius.circular(10),
          ),
          fixedSize: const Size(double.infinity, 50)),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: [
          Row(
            children: [
              Icon(
                icon,
                color: iconColor ??Colors.white,
              ),
              const SizedBox(
                width: 10,
              ),
              MediumText(
                title: title,
                color: textColor ?? Colors.white,
              ),
            ],
          ),
          const Icon(
            Icons.keyboard_arrow_right_rounded,
            color: Colors.white,
          )
        ],
      ),
    );
  }
}
