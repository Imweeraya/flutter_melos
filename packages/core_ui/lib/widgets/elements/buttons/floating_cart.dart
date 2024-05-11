import 'package:flutter/material.dart';

class FloatingCart extends StatelessWidget {
  const FloatingCart({super.key});

  @override
  Widget build(BuildContext context) {
    return SizedBox(
        width: 80,
        height: 80,
        child: FloatingActionButton(
          onPressed: () {
            
          },
          
          foregroundColor: Colors.white,
          backgroundColor: const Color.fromARGB(255, 0, 0, 0),
          shape: RoundedRectangleBorder(borderRadius: BorderRadius.circular(30)),
          child: const Icon(Icons.add_shopping_cart_rounded , size: 30,),
        ),
      );
  }
}