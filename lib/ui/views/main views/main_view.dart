import 'package:be_finance_app/data/constants/colors.dart';
import 'package:be_finance_app/ui/widgets/custom%20widgets/custom_divider.dart';
import 'package:be_finance_app/ui/widgets/main%20view%20widgets/wallet_widget.dart';
import 'package:flutter/material.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          children: [
            CustomDivider(),
            const WalletWidget(),
            CustomDivider(),
          ],
        ),
        // ListView(),
      ],
    );
  }
}
