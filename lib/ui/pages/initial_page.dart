import 'dart:ui';

import 'package:be_finance_app/ui/views/initial%20view/login_view.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: LoginView()
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
