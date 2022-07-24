import 'package:be_finance_app/ui/views/start%20view/change_language_view.dart';
import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: SafeArea(child: ChangeLanguageView())
    );
  }
}
