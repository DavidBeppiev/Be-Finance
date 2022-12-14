import 'package:be_finance_app/data/constants/colors.dart';
import 'package:flutter/material.dart';

abstract class AllStyles {
  static const TextStyle ts_Fs20_CSec_FFMain = TextStyle(
      letterSpacing: 2,
      fontSize: 20,
      fontWeight: FontWeight.bold,
      color: AllColors.secondaryColor,
      fontFamily: 'Main');

  static const TextStyle ts_Fs23_CMain_FFSecondary = TextStyle(
      fontSize: 23,
      fontWeight: FontWeight.bold,
      color: AllColors.mainColor,
      fontFamily: 'Secondary');

  static const TextStyle ts_Fs18_CSecondary_FFMain =
      TextStyle(fontSize: 18, color: AllColors.secondaryColor, fontFamily: 'Main');

  static const TextStyle ts_Fs23_CMain_FFTagline = TextStyle(
      fontWeight: FontWeight.bold,
      fontSize: 23,
      color: AllColors.mainColor,
      letterSpacing: 2.0,
      fontFamily: 'Tagline');

  static const TextStyle ts_Fs20_CMain_FFSec =
      TextStyle(fontSize: 20, color: AllColors.mainColor, fontFamily: 'Secondary');

  static const TextStyle ts_Fs50_CSecondary_FFNumbers = TextStyle(
      color: AllColors.secondaryColor, fontSize: 50, fontFamily: 'Numbers');

  static const TextStyle ts_Fs15_CMain_FFMain = TextStyle(
      color: AllColors.secondaryColor, fontSize: 15, fontFamily: 'Main');

  static const TextStyle ts_Fs18_CRed_FFNumbers = TextStyle(
      color: Colors.red, fontSize: 18, fontFamily: 'Numbers');
  static const TextStyle ts_Fs18_CGreen_FFNumbers = TextStyle(
      color: Colors.green, fontSize: 18, fontFamily: 'Numbers');

  static const TextStyle ts_Fs25_CSecondary_FFNumbers = TextStyle(
      color: AllColors.secondaryColor, fontSize: 25, fontFamily: 'Numbers');
}
