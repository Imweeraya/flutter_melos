import 'package:core_ui/widgets/elements/inputs/search_input.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class HomeAppBar extends StatelessWidget {
  const HomeAppBar({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      color: Colors.black87,
      child: Padding(
        padding: const EdgeInsets.all(8),
        child: Row(
          children: [
            const Expanded(child: SearchInput()),
            IconButton(
              onPressed: () {},
              icon: const Icon(Icons.info_outline_rounded),
              color: Colors.white70,
              iconSize: 40,
            )
          ],
        ),
      ),
    );
  }
}
