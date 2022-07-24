import 'package:be_finance_app/bloc/main_page_navigation_cubit/main_page_navigation_cubit.dart';
import 'package:be_finance_app/data/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:flutter_snake_navigationbar/flutter_snake_navigationbar.dart';

Widget BottomNavigationWidget() {
  SnakeBarBehaviour snakeBarStyle = SnakeBarBehaviour.floating;

  SnakeShape snakeShape = SnakeShape.rectangle;

  ShapeBorder? bottomBarShape = const RoundedRectangleBorder(
    borderRadius: BorderRadius.all(Radius.circular(10)),
  );

  EdgeInsets padding = const EdgeInsets.all(5);

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
      onTap: (index) {
        setState(() => _selectedItemPosition = index);
        switch (index) {
          case 0:
            BlocProvider.of<MainPageNavigationCubit>(context).toMain();
            break;
          case 1:
            BlocProvider.of<MainPageNavigationCubit>(context).toOperations();
            break;
          case 2:
            BlocProvider.of<MainPageNavigationCubit>(context).toReport();
            break;
          case 3:
            BlocProvider.of<MainPageNavigationCubit>(context).toProfile();
            break;
          default:
            BlocProvider.of<MainPageNavigationCubit>(context).toMain();
        }
      },
      items: const [
        BottomNavigationBarItem(icon: Icon(Icons.home)), // main
        BottomNavigationBarItem(icon: Icon(Icons.history, size: 27.0,)), // operations
        BottomNavigationBarItem(icon: Icon(Icons.inventory_outlined)), // report
        BottomNavigationBarItem(icon: Icon(Icons.person)), // profile
      ],
      selectedLabelStyle: const TextStyle(fontSize: 14),
      unselectedLabelStyle: const TextStyle(fontSize: 10),
    ),
  );
}
