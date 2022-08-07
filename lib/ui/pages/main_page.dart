import 'package:be_finance_app/bloc/main_page_navigation_cubit/main_page_navigation_cubit.dart';
import 'package:be_finance_app/data/constants/colors.dart';
import 'package:be_finance_app/data/constants/text_styles.dart';
import 'package:be_finance_app/ui/pages/settings_page.dart';
import 'package:be_finance_app/ui/views/main%20views/main_view.dart';
import 'package:be_finance_app/ui/views/main%20views/operations_view.dart';
import 'package:be_finance_app/ui/views/main%20views/profile_view.dart';
import 'package:be_finance_app/ui/views/main%20views/report_view.dart';
import 'package:be_finance_app/ui/widgets/bottom%20navigation%20widget/bottom_navigation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text(
          'BeFinance',
          style: AllStyles.logoTitleStyle,
        ),
        centerTitle: true,
        backgroundColor: AllColors.secondaryColor,
        leading: IconButton(
            onPressed: () {
              Navigator.of(context).push(
                  MaterialPageRoute(builder: (context) => SettingsPage()));
            },
            icon: const Icon(
              Icons.settings,
              color: AllColors.mainColor,
            )),
      ),
      body: BlocBuilder<MainPageNavigationCubit, MainPageNavigationState>(
        builder: (context, state) {
          if (state is OperationsState) return OperationsView();
          if (state is ReportState) return ReportView();
          if (state is ProfileState) return ProfileView();
          else return MainView();
        },
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
