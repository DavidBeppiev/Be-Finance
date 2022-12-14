import 'package:be_finance_app/bloc/Initial_page_cubit/initial_page_cubit.dart';
import 'package:be_finance_app/data/constants/text_styles.dart';
import 'package:be_finance_app/bloc/auth_view_navigation_cubit/auth_transition_views_cubit.dart';
import 'package:be_finance_app/localizations/app_localizations.dart';
import 'package:be_finance_app/ui/widgets/auth%20page%20widgets/text_form_field_widget.dart';
import 'package:be_finance_app/ui/widgets/custom%20widgets/custom_button.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Column(
          children: [
            CustomTextFormField(
                AppLocalizations.of(context)!.translate('name_input_text')!,
                Icons.person),
            CustomTextFormField(
                AppLocalizations.of(context)!.translate('password_input_text')!,
                Icons.key),
            const SizedBox(
              height: 13,
            ),
            Container(
              padding: const EdgeInsets.only(top: 10, left: 25, right: 25),
              child: CustomButton(
                  AppLocalizations.of(context)!
                      .translate('login_text')!
                      .toUpperCase(), () {
                BlocProvider.of<InitialPageCubit>(context).goToMainPage();
              }),
            ),
          ],
        ),
        const SizedBox(
          height: 32,
        ),
        const Divider(),
        Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.translate('chek_registration_text')!,
              style: AllStyles.ts_Fs18_CSecondary_FFMain,
            ),
            InkWell(
              onTap: () =>
                  BlocProvider.of<AuthNavigationViewsCubit>(context).toRegister(),
              child: Text(
                AppLocalizations.of(context)!
                    .translate('registration_text')!
                    .toUpperCase(),
                style: AllStyles.ts_Fs18_CSecondary_FFMain,
              ),
            )
          ],
        ),
      ],
    );
  }
}
