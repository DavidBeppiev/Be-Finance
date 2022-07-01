import 'package:bloc/bloc.dart';
import 'package:meta/meta.dart';

part 'auth_transition_views_state.dart';

class AuthTransitionViewsCubit extends Cubit<AuthTransitionViewsState> {
  AuthTransitionViewsCubit() : super(AuthTransitionViewsLogin());

  void toRegister () {
    emit(AuthTransitionViewsRegistration());
  }

  void toLogin () {
    emit(AuthTransitionViewsLogin());
  }

}
