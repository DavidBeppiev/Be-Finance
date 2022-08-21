import 'package:be_finance_app/data/constants/colors.dart';
import 'package:flutter/material.dart';

Widget CustomDivider() {
  return Expanded(
      child: Container(
    decoration: const BoxDecoration(
      color: AllColors.secondaryColor,
      boxShadow: [
        BoxShadow(
            color: AllColors.shadowColor, blurRadius: 15, spreadRadius: 1)
      ],
    ),
    height: 10,
  ));
}
