import 'package:be_finance_app/data/constants/colors.dart';
import 'package:flutter/material.dart';

abstract class AllStyles {
  static const TextStyle standartStyle = TextStyle(
    letterSpacing: 3,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AllColors.secondaryColor,
    fontFamily: 'Main'
  );

  static const TextStyle secondaryStyle = TextStyle(
    letterSpacing: 6,
    fontSize: 24,
    fontWeight: FontWeight.bold,
    color: AllColors.mainColor,
    fontFamily: 'Main'
  );
}