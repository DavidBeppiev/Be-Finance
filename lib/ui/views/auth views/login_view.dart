import 'package:be_finance_app/bloc/auth_view_transition_cubit/auth_transition_views_cubit.dart';
import 'package:be_finance_app/data/constants/text_styles.dart';
import 'package:be_finance_app/localizations/app_localizations.dart';
import 'package:be_finance_app/ui/widgets/input_widgets/text_form_field_widget.dart';
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
                AppLocalizations.of(context)!.translate('name_input_text')!.toUpperCase(),
                Icons.person),
            CustomTextFormField(
                AppLocalizations.of(context)!.translate('password_input_text')!.toUpperCase(),
                Icons.key),
          ],
        ),
        SizedBox(height: 32,),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Text(
              AppLocalizations.of(context)!.translate('chek_registration_text')!,
              style: AllStyles.inputHelperStyle,
            ),
            InkWell(
              onTap: () {
                BlocProvider.of<AuthTransitionViewsCubit>(context).toRegister();
              },
              child: Text(
                AppLocalizations.of(context)!.translate('registration_text')!.toUpperCase(),
                style: AllStyles.inputHelperStyle,
              ),
            )
          ],
        ),
      ],
    );
  }
}
