part of 'language_bloc.dart';

@immutable
abstract class LanguageEvent {
  const LanguageEvent();
}

class ChangeLanguage extends LanguageEvent {
  final Locale language;

  const ChangeLanguage({required this.language});
}
