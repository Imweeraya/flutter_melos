import 'package:core_ui/widgets/elements/texts/menubar_text.dart';
import 'package:flutter/material.dart';

class HomeMenubar extends StatelessWidget {
  HomeMenubar({super.key, required this.selectMenu});
  Function(String path)? selectMenu;

  @override
  Widget build(BuildContext context) {
    return Container(
        color: Colors.black87,
        height: 80,
        child: Padding(
          padding: const EdgeInsets.fromLTRB(20, 5, 20, 5),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        if (selectMenu != null) {
                          selectMenu!('/');
                        }
                      },
                      icon: const Icon(
                        Icons.home_filled,
                        color: Colors.white70,
                        size: 30,
                      )),
                  MenubarText(title: "Shop")
                ],
              ),
              Container(
                color: Colors.white,
                width: 0.5,
                height: 50,
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.manage_search_rounded,
                        color: Colors.white70,
                        size: 30,
                      )),
                  MenubarText(title: "Category")
                ],
              ),
              Container(
                color: Colors.white,
                width: 0.5,
                height: 50,
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.shopping_bag_rounded,
                        color: Colors.white70,
                        size: 30,
                      )),
                  MenubarText(title: "My bag")
                ],
              ),
              Container(
                color: Colors.white,
                width: 0.5,
                height: 50,
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {},
                      icon: const Icon(
                        Icons.notifications_active,
                        color: Colors.white70,
                        size: 30,
                      )),
                  MenubarText(title: "Notify")
                ],
              ),
              Container(
                color: Colors.white,
                width: 0.5,
                height: 50,
              ),
              Column(
                children: [
                  IconButton(
                      onPressed: () {
                        if (selectMenu != null) {
                          selectMenu!('/user');
                        }
                      },
                      icon: const Icon(
                        Icons.person,
                        color: Colors.white70,
                        size: 30,
                      )),
                  MenubarText(title: "Me")
                ],
              ),
            ],
          ),
        ));
  }
}
