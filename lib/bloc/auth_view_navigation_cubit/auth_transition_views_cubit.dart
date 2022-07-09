import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_transition_views_state.dart';

class AuthNavigationViewsCubit extends Cubit<AuthNavigationViewsState> {
  AuthNavigationViewsCubit() : super(AuthTransitionViewsLogin());

  void toRegister () {
    emit(AuthTransitionViewsRegistration());
  }

}
