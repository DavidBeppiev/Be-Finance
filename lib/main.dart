import 'package:be_finance_app/bloc/providers.dart';
import 'package:be_finance_app/bloc/locale_cubit/locale_cubit.dart';
import 'package:be_finance_app/data/constants/colors.dart';
import 'package:be_finance_app/localizations/app_localizations_setup.dart';
import 'package:be_finance_app/ui/pages/initial_page.dart';
import 'package:flutter/material.dart';
import 'package:flutter/services.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    SystemChrome.setPreferredOrientations([
      DeviceOrientation.portraitUp,
      DeviceOrientation.portraitDown,
    ]);
    return MultiBlocProvider(
      providers: BlocProviders.providers,
      child: BlocBuilder<LocaleCubit, LocaleState>(
        buildWhen: (previousState, currentState) => previousState != currentState,
        builder: (_, localeState) {
          return MaterialApp(
          theme: ThemeData(
            brightness: Brightness.dark,
            scaffoldBackgroundColor: AllColors.mainColor
          ),
          supportedLocales: AppLocalizationsSetup.supportedLocales,
          localizationsDelegates: AppLocalizationsSetup.localizationsDelegates,
          locale: localeState.locale,
          home: InitialPage(),
          );
        }
      ),
    );
  }
}
