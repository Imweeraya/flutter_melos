import 'package:core_ui/widgets/elements/buttons/primary_button.dart';
import 'package:core_ui/widgets/elements/texts/big_text.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeJumButton extends StatelessWidget {
  const HomeJumButton({super.key, required this.url , required this.title , required this.buttonTitle});

  final String url;
  final String title;
  final String buttonTitle;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 250,
      width: MediaQuery.of(context).size.width,
      child: Stack(
        children: [
          Image.network(
            url,
            height: 250,
            width: MediaQuery.of(context).size.width,
            fit: BoxFit.cover,
          ),
          SizedBox(
            height: 250,
            width: MediaQuery.of(context).size.width,
            child: DecoratedBox(
              decoration: BoxDecoration(color: Colors.black.withOpacity(0.5)),
            ),
          ),
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: Row(
              children: [
                Expanded(
                    child: Column(
                  mainAxisAlignment: MainAxisAlignment.end,
                  crossAxisAlignment: CrossAxisAlignment.center,
                  children: [
                    Bigtext(
                      title: title,
                      color: Colors.white,
                    ),
                    PrimaryButton(title: buttonTitle)
                  ],
                ))
              ],
            ),
          )
        ],
      ),
    );
  }
}
