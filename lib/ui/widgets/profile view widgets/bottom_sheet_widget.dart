import 'package:be_finance_app/bloc/profile_image_cubit/profile_image_cubit.dart';
import 'package:be_finance_app/data/constants/colors.dart';
import 'package:be_finance_app/data/constants/text_styles.dart';
import 'package:be_finance_app/localizations/app_localizations.dart';
import 'package:be_finance_app/ui/widgets/profile%20view%20widgets/photo_tool_selection_button_widget.dart';
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
              photoToolSelectionButtonWidget(context, 0, Icons.photo, 'gallery_text'),
              const SizedBox(
                width: 30,
              ),
              photoToolSelectionButtonWidget(context, 1, Icons.camera, 'camera_text'),
            ],
          ),
        );
      });
}