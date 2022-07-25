import 'package:be_finance_app/data/constants/colors.dart';
import 'package:be_finance_app/ui/widgets/charts_widget/chart_widget.dart';
import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(
        child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Row(
              children: const [
                CircleAvatar(
                  radius: 30.0,
                  backgroundImage: AssetImage('assets/images/no_image.png'),
                  backgroundColor: Colors.grey,
                ),
                SizedBox(
                  width: 20.0,
                ),
                Text('name', style: TextStyle(color: AllColors.secondaryColor)),
              ],
            ),
            const Icon(
              Icons.exit_to_app,
              color: AllColors.secondaryColor,
            )
          ],
        ),
        SizedBox(height: 25.0,),
        Container(
          width: double.infinity,
          height: 300,
          color: Colors.grey,
          child: DateTimeComboLinePointChart([]),
        )
      ],
    ));
  }
}
