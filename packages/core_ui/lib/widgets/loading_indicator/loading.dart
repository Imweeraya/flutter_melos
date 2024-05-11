import 'package:flutter/material.dart';
import 'package:loading_indicator/loading_indicator.dart';

class Loading extends StatelessWidget {
  const Loading({super.key});

  @override
  Widget build(BuildContext context) {
    return const SizedBox(
      width: 100,
      height: 100,
      child: Column(
        children: [
          LoadingIndicator(
            indicatorType: Indicator.pacman,
            colors: [
              Color.fromARGB(137, 24, 24, 24),
              Color.fromARGB(255, 106, 106, 106),
              Color.fromARGB(255, 184, 184, 184)
            ],
            strokeWidth: 4.0,
            pathBackgroundColor: Colors.white,
          ),
        ],
      ),
    );
  }
}
