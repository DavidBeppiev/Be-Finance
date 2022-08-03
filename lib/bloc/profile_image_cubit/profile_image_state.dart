part of 'profile_image_cubit.dart';

@immutable
abstract class ProfileImageState {}

class ProfileImageInitial extends ProfileImageState {
  final File image;
  ProfileImageInitial({required this.image});
}