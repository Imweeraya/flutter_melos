import 'package:core/router/go_router.dart';
import 'package:flutter/material.dart';
import 'package:go_router/go_router.dart';

class ButtonNavigation extends StatefulWidget {
  const ButtonNavigation({super.key , required this.child , required this.location});

  final String location;
  final Widget child;

  @override
  State<ButtonNavigation> createState() => _ButtonNavigationState();
}

class _ButtonNavigationState extends State<ButtonNavigation> {
  int _currentIndex = 0;

  void onTap(BuildContext context, int index) {
    if(index == _currentIndex) return;

    setState(() {
      _currentIndex = index;
    });

    context.go(routes[index]);
  }


  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: widget.child,

      bottomNavigationBar: BottomNavigationBar(
        
        items: const <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: Icon(Icons.home_rounded),
            label: 'Shop',
            backgroundColor: Colors.black87,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.manage_search_rounded),
            label: 'Category',
            backgroundColor: Colors.black87,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.shopping_bag_rounded),
            label: 'My bag',
            backgroundColor: Colors.black87,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.notifications_active_rounded),
            label: 'Notify',
            backgroundColor: Colors.black87,
          ),
          BottomNavigationBarItem(
            icon: Icon(Icons.person),
            label: 'Me',
            backgroundColor: Colors.black87,
          ),
        ],
        currentIndex: _currentIndex,
        unselectedItemColor: Colors.white54,
        selectedItemColor: Colors.white,
        onTap: (index) {
          onTap(context, index);
        }
      ),
    );
  }
}