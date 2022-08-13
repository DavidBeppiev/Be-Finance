import 'package:be_finance_app/data/constants/colors.dart';
import 'package:be_finance_app/data/constants/text_styles.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String text;
  Function() fun;
  CustomButton(this.text, this.fun, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 53,
      decoration: BoxDecoration(
        color: AllColors.secondaryColor,
        borderRadius: BorderRadius.circular(16.0),
        boxShadow: [
          BoxShadow(
            color: Colors.black.withOpacity(0.25),
            blurRadius: 4,
            offset: const Offset(0, 4),
          ),
        ],
      ),
      child: Material(
        color: Colors.transparent,
        child: InkWell(
          borderRadius: BorderRadius.circular(16.0),
          onTap: () {
            fun();
          },
          child: Center(
            child: Text(text, style: AllStyles.ts_Fs23_CMain_FFSecondary),
          ),
        ),
      ),
    );
  }
}
