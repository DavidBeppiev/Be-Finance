import 'package:be_finance_app/bloc/auth_view_transition_cubit/auth_transition_views_cubit.dart';
import 'package:be_finance_app/localizations/app_localizations.dart';
import 'package:be_finance_app/ui/views/auth%20views/login_view.dart';
import 'package:be_finance_app/ui/views/auth%20views/registration_view.dart';
import 'package:be_finance_app/ui/widgets/input_widgets/text_form_field_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AuthPage extends StatelessWidget {
  const AuthPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
        onTap: () {
          FocusScope.of(context).unfocus();
        },
        child: Scaffold(
            body: Center(
              child: SingleChildScrollView(
                child: Column(
                    children: [
                      Image.asset(
                        'assets/images/logo_transparent.png',
                      ),
                      BlocBuilder<AuthTransitionViewsCubit, AuthTransitionViewsState>(
                        builder: (context, state) {
                          if(state is AuthTransitionViewsRegistration)
                            return RegistrationView();
                          if(state is AuthTransitionViewsLogin)
                            return LoginView();
                          else return SizedBox.shrink();
                        },
                      )
                    ]),
              ),
            )));
  }
}
