import 'package:be_finance_app/data/constants/text_styles.dart';
import 'package:be_finance_app/localizations/app_localizations.dart';
import 'package:be_finance_app/ui/pages/auth_page.dart';
import 'package:be_finance_app/ui/widgets/change_language_widgets/drop_down_langs.dart';
import 'package:be_finance_app/ui/widgets/custom%20widgets/custom_button.dart';
import 'package:flutter/material.dart';

class ChangeLanguageView extends StatelessWidget {
  const ChangeLanguageView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Image.asset(
              'assets/images/pi_logo_transparent.png',
            ),
            Text(
              AppLocalizations.of(context)!.translate('change_language')!.toUpperCase(),
              style: AllStyles.standartStyle,
            ),
            Container(margin: const EdgeInsets.only(top: 14), child: DropDownMenuWidget(context)),
            CustomButton(AppLocalizations.of(context)!.translate('further_title')!.toUpperCase(),
                () {
              Navigator.push(context, MaterialPageRoute(builder: (context) => AuthPage()));
            })
          ],
        ),
      ),
    );
  }
}
