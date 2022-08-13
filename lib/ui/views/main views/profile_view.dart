import 'package:be_finance_app/bloc/profile_image_cubit/profile_image_cubit.dart';
import 'package:be_finance_app/data/constants/colors.dart';
import 'package:be_finance_app/ui/widgets/profile%20view%20widgets/bottom_sheet_widget.dart';
import 'package:be_finance_app/ui/widgets/profile%20view%20widgets/chart_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

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
                  children: [
                    InkWell(
                      borderRadius: BorderRadius.circular(30.0),
                      onTap: () => showImageSourceBottomSheet(context),
                      child: BlocBuilder<ProfileImageCubit, ProfileImageState>(
                        builder: (context, state) {
                          if(state is ProfileImageInitial) {
                            return CircleAvatar(
                                radius: 30.0,
                                backgroundImage:
                                state.image.path == 'assets/images/pi_no_image.png'
                                    ? AssetImage(state.image.path)
                                    : FileImage(state.image) as ImageProvider,
                                backgroundColor: AllColors.lightGreyColor,
                             );
                          }
                          return const SizedBox();
                        }
                      ),
                    ),
                    const SizedBox(
                      width: 20.0,
                    ),
                    const Text('name', style: TextStyle(color: AllColors
                        .secondaryColor)),
                  ],
                ),
                const Icon(
                  Icons.exit_to_app,
                  color: AllColors.secondaryColor,
                )
              ],
            ),
            const SizedBox(height: 25.0,),
            Container(
              width: double.infinity,
              height: 300,
              color: AllColors.secondaryColor,
              child: DateTimeComboLinePointChart(),
            )
          ],
        ));
  }
}
