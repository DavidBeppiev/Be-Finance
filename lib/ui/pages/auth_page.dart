import 'package:be_finance_app/localizations/app_localizations.dart';
import 'package:be_finance_app/ui/widgets/input_widgets/text_form_field_widget.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () {
        FocusScope.of(context).unfocus();
      },
      child: Scaffold(
          body: Center(
        child: SingleChildScrollView(
          // physics: NeverScrollableScrollPhysics(),
          child: Column(
            children: [
              Image.asset(
                'assets/images/logo_transparent.png',
              ),
              Column(
                children: [
                  CustomTextFormField(
                      AppLocalizations.of(context)!.translate('name_input_text')!.toUpperCase(),
                      Icons.person),
                  CustomTextFormField(
                      AppLocalizations.of(context)!.translate('password_input_text')!.toUpperCase(),
                      Icons.key
                  ),
                ],
              )
            ],
          ),
        ),
      )),
    );
  }
}
