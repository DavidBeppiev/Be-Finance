import 'package:be_finance_app/localizations/app_localizations.dart';
import 'package:be_finance_app/ui/widgets/custom%20widgets/custom_button.dart';
import 'package:be_finance_app/ui/widgets/input_widgets/text_form_field_widget.dart';
import 'package:flutter/material.dart';

class RegistrationView extends StatelessWidget {
  const RegistrationView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SingleChildScrollView(
        child: Column(
          children: [
            Image.asset(
              'assets/images/logo_transparent.png',
            ),
            Column(
              children: [
                CustomTextFormField(
                    AppLocalizations.of(context)!.translate('name_input_text')!,
                    Icons.person),
                CustomTextFormField(
                    AppLocalizations.of(context)!.translate('password_input_text')!,
                    Icons.key),
                CustomTextFormField(
                    AppLocalizations.of(context)!
                        .translate('confirm_password_input_text')!,
                    Icons.key),
              ],
            ),
            Padding(
              padding: const EdgeInsets.all(25),
              child: Row(
                children: [
                  Expanded(
                    child: CustomButton(
                        AppLocalizations.of(context)!.translate('registration_text')!.toUpperCase(), () {}
                    ),
                  ),
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}