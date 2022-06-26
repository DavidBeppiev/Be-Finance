import 'package:be_finance_app/data/constants/colors.dart';
import 'package:be_finance_app/data/constants/text_styles.dart';
import 'package:be_finance_app/ui/views/initial%20view/login_view.dart';
import 'package:flutter/material.dart';

class CustomButton extends StatelessWidget {
  String text;

  CustomButton(@required this.text, {Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: 56,
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
      child: InkWell(
        onTap: () {
          Navigator.push(context, MaterialPageRoute(builder: (context) => LoginView()));
        },
        child: Center(
          child: Text(text, style: AllStyles.secondaryStyle),
        ),
      ),
    );
  }
}
