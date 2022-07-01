import 'package:be_finance_app/bloc/auth_view_transition_cubit/auth_transition_views_cubit.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:be_finance_app/bloc/locale_cubit/locale_cubit.dart';

class BlocProviders {
  static final List<BlocProvider> providers = [
    BlocProvider<LocaleCubit>(create: (_) => LocaleCubit()),
    BlocProvider<AuthTransitionViewsCubit>(create: (_) => AuthTransitionViewsCubit()),
  ];
}