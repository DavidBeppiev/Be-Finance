import 'package:be_finance_app/bloc/main_page_navigation_cubit/main_page_navigation_cubit.dart';
import 'package:be_finance_app/ui/views/main_views/categories_view.dart';
import 'package:be_finance_app/ui/views/main_views/main_view.dart';
import 'package:be_finance_app/ui/views/main_views/profile_view.dart';
import 'package:be_finance_app/ui/views/main_views/report_view.dart';
import 'package:be_finance_app/ui/widgets/bottom_navigation_widget/bottom_navigation_widget.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class MainPage extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: BlocBuilder<MainPageNavigationCubit, MainPageNavigationState> (
        builder: (context, state) {
          if(state is CatecoriesState)
            return CategoriesView();
          if(state is ReportState)
            return ReportView();
          if(state is ProfileState)
            return ProfileView();
          else return MainView();
        },
      ),
      bottomNavigationBar: BottomNavigationWidget(),
    );
  }
}
