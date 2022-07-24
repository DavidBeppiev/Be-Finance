import 'package:flutter/material.dart';

class ProfileView extends StatelessWidget {
  const ProfileView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Column(
      mainAxisAlignment: MainAxisAlignment.center,
      children: [
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: const [
            CircleAvatar(
              radius: 30.0,
              backgroundImage: AssetImage('assets/images/no_image.png'),
              backgroundColor: Colors.grey,
            ),
            SizedBox(width: 20.0,),
            Text('name'),
          ],
        )
      ],
    ));
  }
}
