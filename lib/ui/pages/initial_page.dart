import 'dart:ui';

import 'package:be_finance_app/translations/locale_keys.g.dart';
import 'package:be_finance_app/ui/screens/login_screen.dart';
import 'package:flutter/material.dart';

import 'package:be_finance_app/all.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginScreen()
      // Center(
      //   child: Column(
      //     mainAxisAlignment: MainAxisAlignment.center,
      //     children: [
      //       Text(
      //         LocaleKeys.hi_text.tr(),
      //         style: const TextStyle(fontFamily: 'Main'),
      //       ),
      //       Text(
      //         LocaleKeys.hi_text.tr(),
      //         style: const TextStyle(fontFamily: 'Secondary'),
      //       ),
      //       Text(
      //         LocaleKeys.hi_text.tr(),
      //         style: const TextStyle(
      //             fontFamily: 'Tagline', fontWeight: FontWeight.bold),
      //       ),
      //     ],
      //   ),
      // ),
    );
  }
}
