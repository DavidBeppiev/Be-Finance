import 'package:be_finance_app/bloc/Initial_page_cubit/initial_page_cubit.dart';
import 'package:be_finance_app/bloc/auth_view_navigation_cubit/auth_transition_views_cubit.dart';
import 'package:be_finance_app/localizations/app_localizations.dart';
import 'package:be_finance_app/ui/pages/main_page.dart';
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
        child: BlocListener<InitialPageCubit, InitialPageState>(
          listener: (context, state) {
            if (state is MainPageState)
              {
                Navigator.of(context).pushAndRemoveUntil(MaterialPageRoute(builder: (context) =>
                    MainPage()), (Route<dynamic> route) => false);
              }
          },
          child: Scaffold(
              body: Center(
                child: SafeArea(
                  child: SingleChildScrollView(
                    child: Column(children: [
                      Image.asset(
                        'assets/images/pi_logo_transparent.png',
                      ),
                      BlocListener<AuthNavigationViewsCubit, AuthNavigationViewsState>(
                        listener: (context, state) {
                          if (state is AuthTransitionViewsRegistration) {
                            Navigator.push(
                                context, MaterialPageRoute(builder: (context) => RegistrationView()));
                          }
                        },
                        child: LoginView(),
                      )
                    ]),
                  ),
                ),
              )),
        ));
  }
}
