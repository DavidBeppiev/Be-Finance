part of 'auth_transition_views_cubit.dart';

@immutable
abstract class AuthNavigationViewsState {}

class AuthTransitionViewsLogin extends AuthNavigationViewsState {}

class AuthTransitionViewsRegistration extends AuthNavigationViewsState {}