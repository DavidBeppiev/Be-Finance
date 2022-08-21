import 'package:be_finance_app/bloc/profile_image_cubit/profile_image_cubit.dart';
import 'package:be_finance_app/data/constants/colors.dart';
import 'package:be_finance_app/data/constants/text_styles.dart';
import 'package:be_finance_app/localizations/app_localizations.dart';
import 'package:be_finance_app/ui/widgets/custom%20widgets/custom_divider.dart';
import 'package:be_finance_app/ui/widgets/main%20view%20widgets/wallet_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:flutter_svg/flutter_svg.dart';

class MainView extends StatelessWidget {
  const MainView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        mainAxisAlignment: MainAxisAlignment.start,
        children: [
          Padding(
            padding: const EdgeInsets.symmetric(horizontal: 15.0, vertical: 20.0),
            child: Row(
              children: [
                BlocBuilder<ProfileImageCubit, ProfileImageState>(
                    builder: (context, state) {
                  if (state is ProfileImageInitial) {
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
                }),
                const SizedBox(
                  width: 20.0,
                ),
                const Text('name', style: AllStyles.ts_Fs20_CSec_FFMain),
              ],
            ),
          ),
          Row(
            children: [
              CustomDivider(),
              const WalletWidget(),
              CustomDivider(),
            ],
          ),
          Padding(
            padding: EdgeInsets.all(15),
            child: Text(
                AppLocalizations.of(context)!.translate('transactions_text')!,
                style: AllStyles.ts_Fs20_CSec_FFMain),
          ),
          const Divider(
            color: AllColors.secondaryColor,
          ),
          //TODO Operations ->
          ListView.builder(
            padding: const EdgeInsets.symmetric(horizontal: 8.0, vertical: 1.0),
            physics: const NeverScrollableScrollPhysics(),
            shrinkWrap: true,
            itemCount: 30,
            itemBuilder: (BuildContext context, int i) {
              return Container(
                decoration: const BoxDecoration(
                    color: AllColors.lightGreyColor, boxShadow: [BoxShadow()]),
                padding: const EdgeInsets.all(15),
                margin: const EdgeInsets.symmetric(vertical: 10.0),
                child: Row(
                  children: [
                    SvgPicture.asset(
                      'assets/images/ic_transactions_buy.svg',
                    ),
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: const [
                        Text(
                          'Categoty title',
                          style: AllStyles.test,
                        ),
                        Text('total',
                          style: AllStyles.test2,
                        )
                      ],
                    )
                  ],
                ),
              );
            },
          )
        ],
      ),
    );
  }
}
