// GENERATED CODE - DO NOT MODIFY BY HAND
import 'package:flutter/material.dart';
import 'package:intl/intl.dart';

import 'intl/messages_all.dart';

// **************************************************************************
// Generator: Flutter Intl IDE plugin
// Made by Localizely
// **************************************************************************

// ignore_for_file: non_constant_identifier_names, lines_longer_than_80_chars
// ignore_for_file: join_return_with_assignment, prefer_final_in_for_each
// ignore_for_file: avoid_redundant_argument_values, avoid_escaping_inner_quotes

class MyLocalizations {
  MyLocalizations();

  static MyLocalizations? _current;

  static MyLocalizations get current {
    assert(_current != null,
        'No instance of MyLocalizations was loaded. Try to initialize the MyLocalizations delegate before accessing MyLocalizations.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<MyLocalizations> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false) ? locale.languageCode : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = MyLocalizations();
      MyLocalizations._current = instance;

      return instance;
    });
  }

  static MyLocalizations of(BuildContext context) {
    final instance = MyLocalizations.maybeOf(context);
    assert(instance != null,
        'No instance of MyLocalizations present in the widget tree. Did you add MyLocalizations.delegate in localizationsDelegates?');
    return instance!;
  }

  static MyLocalizations? maybeOf(BuildContext context) {
    return Localizations.of<MyLocalizations>(context, MyLocalizations);
  }

  /// `Понедельник`
  String get monday {
    return Intl.message(
      'Понедельник',
      name: 'monday',
      desc: '',
      args: [],
    );
  }

  /// `Вторник`
  String get tuesday {
    return Intl.message(
      'Вторник',
      name: 'tuesday',
      desc: '',
      args: [],
    );
  }

  /// `Среда`
  String get wednesday {
    return Intl.message(
      'Среда',
      name: 'wednesday',
      desc: '',
      args: [],
    );
  }

  /// `Четверг`
  String get thursday {
    return Intl.message(
      'Четверг',
      name: 'thursday',
      desc: '',
      args: [],
    );
  }

  /// `Пятница`
  String get friday {
    return Intl.message(
      'Пятница',
      name: 'friday',
      desc: '',
      args: [],
    );
  }

  /// `Суббота`
  String get saturday {
    return Intl.message(
      'Суббота',
      name: 'saturday',
      desc: '',
      args: [],
    );
  }

  /// `Воскресенье`
  String get sunday {
    return Intl.message(
      'Воскресенье',
      name: 'sunday',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<MyLocalizations> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'ru'),
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<MyLocalizations> load(Locale locale) => MyLocalizations.load(locale);
  @override
  bool shouldReload(AppLocalizationDelegate old) => false;

  bool _isSupported(Locale locale) {
    for (var supportedLocale in supportedLocales) {
      if (supportedLocale.languageCode == locale.languageCode) {
        return true;
      }
    }
    return false;
  }
}
