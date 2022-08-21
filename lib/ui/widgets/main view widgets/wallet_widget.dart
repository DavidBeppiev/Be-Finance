import 'package:be_finance_app/data/constants/colors.dart';
import 'package:be_finance_app/data/constants/text_styles.dart';
import 'package:flutter/material.dart';

class WalletWidget extends StatelessWidget {
  const WalletWidget({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Container(
        width: 225.0,
        height: 225.0,
        decoration: BoxDecoration(
          color: AllColors.secondaryColor.withOpacity(0.7),
          shape: BoxShape.circle,
          boxShadow: const [
            BoxShadow(
                color: AllColors.shadowColor,
                blurRadius: 6,)
          ],
        ),
        child: Center(
          child: Container(
            width: 200.0,
            height: 200.0,
            decoration: const BoxDecoration(boxShadow: [
              BoxShadow(
                  color: AllColors.lightGreyColor,
                  blurRadius: 8,
                  spreadRadius: 2,
                  blurStyle: BlurStyle.solid)
            ], color: AllColors.mainColor, shape: BoxShape.circle),
            child: const Center(
                child: Text(
              '100000',
              style: AllStyles.ts_Fs50_CSecondary_FFNumbers,
            )),
          ),
        ),
      ),
    );
  }
}
