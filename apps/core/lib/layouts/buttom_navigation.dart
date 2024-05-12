import 'package:core/router/go_router.dart';
import 'package:core_ui/theme/theme_provider.dart';
import 'package:flutter/material.dart';
import 'package:flutter_riverpod/flutter_riverpod.dart';
import 'package:go_router/go_router.dart';

class ButtonNavigation extends ConsumerStatefulWidget  {
  const ButtonNavigation({super.key , required this.child , required this.location});

  final String location;
  final Widget child;

  @override
  ConsumerState<ButtonNavigation> createState() => _ButtonNavigationState();
}

class _ButtonNavigationState extends ConsumerState<ButtonNavigation> {
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

    final color = ref.watch(appThemeProvider).themeColor;

    return Scaffold(
      body: widget.child,

      bottomNavigationBar: BottomNavigationBar(
        
        items: <BottomNavigationBarItem>[
          BottomNavigationBarItem(
            icon: const Icon(Icons.home_rounded),
            label: 'Shop',
            backgroundColor: color.backgroundColorPrimary,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.manage_search_rounded),
            label: 'Category',
            backgroundColor: color.backgroundColorPrimary,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.shopping_bag_rounded),
            label: 'My bag',
            backgroundColor: color.backgroundColorPrimary,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.notifications_active_rounded),
            label: 'Notify',
            backgroundColor: color.backgroundColorPrimary,
          ),
          BottomNavigationBarItem(
            icon: const Icon(Icons.person),
            label: 'Me',
            backgroundColor: color.backgroundColorPrimary,
          ),
        ],
        currentIndex: _currentIndex,
        selectedItemColor: color.selectedItem,
        unselectedItemColor: color.unselectedItem,
        onTap: (index) {
          onTap(context, index);
        }
      ),
    );
  }
}