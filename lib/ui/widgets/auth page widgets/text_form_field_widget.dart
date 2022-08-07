import 'package:be_finance_app/data/constants/colors.dart';
import 'package:be_finance_app/data/constants/text_styles.dart';
import 'package:flutter/material.dart';

class CustomTextFormField extends StatelessWidget {
  String text;
  IconData icon;

  CustomTextFormField(@required this.text, @required this.icon, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      width: double.infinity,
      child: Padding(
        padding: const EdgeInsets.only(left: 25, right: 25, top: 20),
        child: TextFormField(
          decoration: InputDecoration(
              prefixIcon: Icon(
                icon,
                color: AllColors.secondaryColor,
              ),
              enabledBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: AllColors.secondaryColor,
                ),
              ),
              focusedBorder: const OutlineInputBorder(
                borderSide: BorderSide(
                  color: AllColors.secondaryColor,
                ),
              ),
              hintText: text,
              hintStyle: AllStyles.inputHelperStyle,
          ),
          style: AllStyles.inputHelperStyle,
        ),
      ),
    );
  }
}
