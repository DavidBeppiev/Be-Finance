import 'dart:io';

import 'package:bloc/bloc.dart';
import 'package:flutter/services.dart';
import 'package:meta/meta.dart';

import 'package:image_picker/image_picker.dart';

part 'profile_image_state.dart';

class ProfileImageCubit extends Cubit<ProfileImageState> {
  ProfileImageCubit()
      : super(ProfileImageInitial(image: File('assets/images/pi_no_image.png')));

  Future setImage(int mode) async {
    try {
      final image;
      if (mode == 0) image = await ImagePicker().pickImage(source: ImageSource.gallery);
      else image = await ImagePicker().pickImage(source: ImageSource.camera);
      if (image == null) {
        emit(ProfileImageInitial(image: File
        ('assets/images/pi_no_image.png')));
        return;
      }

      emit(ProfileImageInitial(image: File(image.path)));
    } on PlatformException catch (e) {
      print('Failed to pick image: $e');
    }
  }


  ///TODO FROM SERVER
  getImage() {}
}
