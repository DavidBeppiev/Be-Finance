import 'package:be_finance_app/data/constants/colors.dart';
import 'package:flutter/material.dart';

import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

Widget BottomNavigationWidget() {
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;

  SnakeShape snakeShape = SnakeShape.circle;

  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(25)),
  );

  EdgeInsets padding = const EdgeInsets.all(12);

  bool showSelectedLabels = false;
  bool showUnselectedLabels = false;

  Color selectedColor = AllColors.secondaryColor;
  Color unselectedColor = AllColors.mainColor;

  int _selectedItemPosition = 0;

  return StatefulBuilder(
    builder: (context, setState) => SnakeNavigationBar.color(
      behaviour: snakeBarStyle,
      snakeShape: snakeShape,
      shape: bottomBarShape,
      padding: padding,
      snakeViewColor: selectedColor,
      selectedItemColor: snakeShape == SnakeShape.indicator ? selectedColor : null,
      unselectedItemColor: unselectedColor,
      backgroundColor: AllColors.secondaryColor.withOpacity(0.5),

      showUnselectedLabels: showUnselectedLabels,
      showSelectedLabels: showSelectedLabels,

      currentIndex: _selectedItemPosition,

      onTap: (index) => setState(() => _selectedItemPosition = index),

      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home)),
        BottomNavigationBarItem(icon: Icon(Icons.category)),
        BottomNavigationBarItem(icon: Icon(Icons.report)),
        BottomNavigationBarItem(icon: Icon(Icons.person)),
      ],
      selectedLabelStyle: const TextStyle(fontSize: 14),
      unselectedLabelStyle: const TextStyle(fontSize: 10),
    ),
  );
}
