import 'package:be_finance_app/data/constants/colors.dart';
import 'package:flutter/material.dart';

abstract class AllStyles {
  static const TextStyle standartStyle = TextStyle(
    letterSpacing: 2,
    fontSize: 20,
    fontWeight: FontWeight.bold,
    color: AllColors.secondaryColor,
    fontFamily: 'Main'
  );

  static const TextStyle secondaryStyle = TextStyle(
    fontSize: 23,
    fontWeight: FontWeight.bold,
    color: AllColors.mainColor,
    fontFamily: 'Secondary'
  );

  static const TextStyle inputHelperStyle = TextStyle(
    fontSize: 18,
    color: AllColors.secondaryColor,
    fontFamily: 'Main'
  );

  static const TextStyle logoTitleStyle = TextStyle(
    fontWeight: FontWeight.bold,
    fontSize: 23,
    color: AllColors.mainColor,
    letterSpacing: 2.0,
    fontFamily: 'Tagline'
  );
}