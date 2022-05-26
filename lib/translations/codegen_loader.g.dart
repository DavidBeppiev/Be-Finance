// DO NOT EDIT. This is code generated via package:easy_localization/generate.dart

// ignore_for_file: prefer_single_quotes

import 'dart:ui';

import 'package:easy_localization/easy_localization.dart' show AssetLoader;

class CodegenLoader extends AssetLoader{
  const CodegenLoader();

  @override
  Future<Map<String, dynamic>> load(String fullPath, Locale locale ) {
    return Future.value(mapLocales[locale.toString()]);
  }

  static const Map<String,dynamic> de = {
  "hi_text": "Hallo",
  "introduce": "Ich heisse NAME"
};
static const Map<String,dynamic> ru = {
  "hi_text": "Привет",
  "introduce": "Меня зовут ИМЯ"
};
static const Map<String,dynamic> en = {
  "hi_text": "Hi",
  "introduce": "My name is NAME"
};
static const Map<String, Map<String,dynamic>> mapLocales = {"de": de, "ru": ru, "en": en};
}
