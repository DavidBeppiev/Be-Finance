part of 'auth_transition_views_cubit.dart';

@immutable
abstract class AuthTransitionViewsState {}

class AuthTransitionViewsLogin extends AuthTransitionViewsState {}

class AuthTransitionViewsRegistration extends AuthTransitionViewsState {}