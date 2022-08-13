import 'package:be_finance_app/bloc/profile_image_cubit/profile_image_cubit.dart';
import 'package:be_finance_app/data/constants/colors.dart';
import 'package:be_finance_app/data/constants/text_styles.dart';
import 'package:be_finance_app/localizations/app_localizations.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

photoToolSelectionButtonWidget(BuildContext context, int selectedTool,
    IconData icon, String toolText) {
  return Expanded(
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
          borderRadius: BorderRadius.circular(16.0),
          onTap: () => _setImageFun(selectedTool, context),
          child: Row(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
              Icon(
                icon,
                size: 30,
                color: AllColors.mainColor,
              ),
              Text(
                AppLocalizations.of(context)!.translate(toolText)!,
                style: AllStyles.ts_Fs20_CMain_FFSec,
              ),
            ],
          ),
        ),
      ),
    ),
  );
}

void _setImageFun(int mode, BuildContext context) async {
  await BlocProvider.of<ProfileImageCubit>(context).setImage(mode);
  Navigator.pop(context);
}
