import 'package:be_finance_app/bloc/Initial_page_cubit/initial_page_cubit.dart';
import 'package:be_finance_app/bloc/auth_view_navigation_cubit/auth_transition_views_cubit.dart';
import 'package:be_finance_app/bloc/main_page_navigation_cubit/main_page_navigation_cubit.dart';
import 'package:be_finance_app/bloc/profile_image_cubit/profile_image_cubit.dart';
import 'package:be_finance_app/bloc/profile_image_cubit/profile_image_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:be_finance_app/bloc/locale_cubit/locale_cubit.dart';

class BlocProviders {
  static final List<BlocProvider> providers = [
    BlocProvider<LocaleCubit>(create: (_) => LocaleCubit()),
    BlocProvider<AuthNavigationViewsCubit>(create: (_) => AuthNavigationViewsCubit()),
    BlocProvider<InitialPageCubit>(create: (_) => InitialPageCubit()),
    BlocProvider<MainPageNavigationCubit>(create: (_) => MainPageNavigationCubit()),
    BlocProvider<ProfileImageCubit>(create: (_) => ProfileImageCubit()),
  ];
}