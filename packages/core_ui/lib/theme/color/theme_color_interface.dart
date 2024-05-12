import 'dart:ui';

import 'package:flutter/material.dart';

abstract class IThemeColor {
  late Color backgroundColorPrimary;
  late Color backgroundColorSecondary;
  late Color textColor;
  late Color unselectedItem;
  late Color selectedItem;
}

class LightTheme implements IThemeColor{
  @override
  Color backgroundColorPrimary = Colors.white;

  @override
  Color backgroundColorSecondary = Colors.grey;

  @override
  Color selectedItem = Colors.black;

  @override
  Color unselectedItem = Colors.grey;

  @override
  Color textColor = Colors.black;

}

class DarkTheme implements IThemeColor{
  @override
  Color backgroundColorPrimary = const Color.fromARGB(255, 15, 15, 15);

  @override
  Color backgroundColorSecondary = const Color.fromARGB(255, 50, 50, 50);

  @override
  Color selectedItem = Colors.white;

  @override
  Color unselectedItem = const Color.fromARGB(255, 106, 106, 106);

  @override
  Color textColor = const Color.fromARGB(255, 255, 255, 255);

}

final lightTheme = LightTheme();
final darkTheme = DarkTheme();