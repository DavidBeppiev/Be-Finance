import 'package:bloc/bloc.dart';
import 'package:flutter/material.dart' show Locale;
import 'package:meta/meta.dart';

part 'locale_state.dart';

class LocaleCubit extends Cubit<LocaleState> {
  LocaleCubit() : super(SelectedLocale(Locale('en')));

  void toRu() => emit(SelectedLocale(Locale('ru')));
  void toEn() => emit(SelectedLocale(Locale('en')));
  void toDe() => emit(SelectedLocale(Locale('de')));
}
