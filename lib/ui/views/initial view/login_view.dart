import 'package:be_finance_app/bloc/locale_cubit/locale_cubit.dart';
import 'package:be_finance_app/localizations/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

class LoginView extends StatelessWidget {
  const LoginView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Column(
        children: [
          Text(AppLocalizations.of(context)!.translate('hello_title')!),
          Text(AppLocalizations.of(context)!.translate('about_app')!),
          SizedBox(height: 50,),
          InkWell(
            child: Text('EN'),
            onTap: () {
              BlocProvider.of<LocaleCubit>(context).toEn();
            },
          ),
          InkWell(
            child: Text('RU'),
            onTap: () {
              BlocProvider.of<LocaleCubit>(context).toRu();
            },
          ),
          InkWell(
            child: Text('DE'),
            onTap: () {
              BlocProvider.of<LocaleCubit>(context).toDe();
            },
          ),
        ],
      ),
    );
  }
}
