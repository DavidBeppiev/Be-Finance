import 'package:be_finance_app/bloc/profile_image_cubit/profile_image_cubit.dart';
import 'package:be_finance_app/data/constants/colors.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

showImageSourceBottomSheet(BuildContext context) {
  showModalBottomSheet<void>(
    context: context,
    builder: (BuildContext context) {
      return Container(
        padding: const EdgeInsets.all(12),
        height: 100,
        width: double.infinity,
        color: AllColors.mainColor,
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceAround,
          children: [
            Expanded(
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  color: AllColors.secondaryColor,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      BlocProvider.of<ProfileImageCubit>(context).setImage(0);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.camera, size: 30, color: AllColors.mainColor,),
                        Text('data'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
            const SizedBox(
              width: 30,
            ),
            Expanded(
              child: Container(
                height: 50.0,
                decoration: BoxDecoration(
                  color: AllColors.secondaryColor,
                  borderRadius: BorderRadius.circular(16.0),
                  boxShadow: [
                    BoxShadow(
                      color: Colors.black.withOpacity(0.25),
                      blurRadius: 4,
                      offset: const Offset(0, 4),
                    ),
                  ],
                ),
                child: Material(
                  color: Colors.transparent,
                  child: InkWell(
                    onTap: () {
                      BlocProvider.of<ProfileImageCubit>(context).setImage(1);
                    },
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                      children: const [
                        Icon(Icons.photo, size: 30, color: AllColors.mainColor,),
                        Text('data'),
                      ],
                    ),
                  ),
                ),
              ),
            ),
          ],
        ),
      );
    }
  );
}

