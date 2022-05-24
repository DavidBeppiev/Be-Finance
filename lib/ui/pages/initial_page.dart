import 'dart:ui';

import 'package:flutter/material.dart';

class InitialPage extends StatelessWidget {
  const InitialPage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            Text('ААРОвв Привет', style: TextStyle(fontFamily: 'Main'),),
            Text('ААРОвв Привет', style: TextStyle(fontFamily: 'Secondary'),),
            Text('ААРОвв Привет', style: TextStyle(fontFamily: 'Tagline', fontWeight: FontWeight.bold),),
          ],
        ),
      ),
    );
  }
}
