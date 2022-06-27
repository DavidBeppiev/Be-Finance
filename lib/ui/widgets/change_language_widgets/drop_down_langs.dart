import 'package:be_finance_app/bloc/locale_cubit/locale_cubit.dart';
import 'package:be_finance_app/data/constants/colors.dart';
import 'package:be_finance_app/data/constants/text_styles.dart';
import 'package:be_finance_app/localizations/app_localizations.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter/material.dart';

Widget DropDownMenuWidget(BuildContext context) {
  List<String> _countries = [
    'Русский',
    'English',
    'Deutsch',
  ];

  double _borderRadius = 10.0;

  return SizedBox(
    child: DropdownButtonFormField(
      isExpanded: false,
      isDense: false,
      decoration: InputDecoration(
          enabledBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(_borderRadius)),
            borderSide: const BorderSide(
              color: AllColors.secondaryColor,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.all(Radius.circular(_borderRadius)),
            borderSide: const BorderSide(
              color: AllColors.secondaryColor,
            ),
          )),
      items: _countries.map((countrie) {
        return DropdownMenuItem(
          child: Text(countrie, style: AllStyles.standartStyle,),
          value: countrie,
        );
      }).toList(),
      onChanged: (countrie) {
        switch (countrie) {
          case 'Русский':
            BlocProvider.of<LocaleCubit>(context).toRu();
            break;
          case 'English':
            BlocProvider.of<LocaleCubit>(context).toEn();
            break;
          case 'Deutsch':
            BlocProvider.of<LocaleCubit>(context).toDe();
            break;
          default:
            BlocProvider.of<LocaleCubit>(context).toDe();
        }
      },
      value: AppLocalizations.of(context)!.translate('country_name')!,
    ),
  );
}
