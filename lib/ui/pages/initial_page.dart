import 'dart:ui';

import 'package:flutter/material.dart';

import 'package:be_finance_app/all.dart';

class InitialPage extends StatelessWidget {
  InitialPage({Key? key}) : super(key: key);

  List<Language> languageList = [
    Language(
      langName: 'English - UK',
      locale: const Locale('en'),
    ),
    Language(
      langName: 'Russian - RU',
      locale: const Locale('ru'),
    ),
    Language(
      langName: 'Germany - DE',
      locale: const Locale('de'),
    )
  ];


  Language? selectedLang;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: BlocBuilder<LanguageBloc, LanguageState>(
          builder: (context, state) {
            return Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                Text(LocaleKeys.hi_text.tr(),
                  style: const TextStyle(fontFamily: 'Main'),),
                Text(LocaleKeys.hi_text.tr(),
                  style: const TextStyle(fontFamily: 'Secondary'),),
                Text(LocaleKeys.hi_text.tr(), style: const TextStyle(
                    fontFamily: 'Tagline', fontWeight: FontWeight.bold),),

                SizedBox(
                  width: 250,
                  child: DropdownButtonFormField<Language>(
                    isExpanded: false,
                    decoration: const InputDecoration(
                        enabledBorder: OutlineInputBorder(
                          borderSide: BorderSide(width: 20),
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                        ),
                        focusedBorder: OutlineInputBorder(
                          borderRadius: BorderRadius.all(Radius.circular(20)),
                          borderSide: BorderSide(
                              color: Colors.green,
                              width: 20),
                        )),
                    items: languageList
                        .map<DropdownMenuItem<Language>>((Language value) {
                      return DropdownMenuItem<Language>(
                        child: Text(value.langName),
                        value: value,
                      );
                    }).toList(),
                    onChanged: (newValue) {
                      print(newValue);
                      // setState(() async{
                      // selectedLang = newValue!;
                      // if (newValue!.langName == 'English - UK') {
                      //   context.setLocale(const Locale('en'));
                      // } else if (newValue.langName == 'Germany - GE') {
                      //   context.setLocale(const Locale('de'));
                      // } else if (newValue.langName == 'Russian - RU') {
                      //   context.setLocale(const Locale('ru'));
                      // }
                      // });
                      context.read<LanguageBloc>().add(
                          ChangeLanguage(language: newValue!.locale));
                    },
                  ),
                ),

              ],
            );
          },
        ),
      ),
    );
  }
}
