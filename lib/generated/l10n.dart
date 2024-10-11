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

class S {
  S();

  static S? _current;

  static S get current {
    assert(_current != null,
        'No instance of S was loaded. Try to initialize the S delegate before accessing S.current.');
    return _current!;
  }

  static const AppLocalizationDelegate delegate = AppLocalizationDelegate();

  static Future<S> load(Locale locale) {
    final name = (locale.countryCode?.isEmpty ?? false)
        ? locale.languageCode
        : locale.toString();
    final localeName = Intl.canonicalizedLocale(name);
    return initializeMessages(localeName).then((_) {
      Intl.defaultLocale = localeName;
      final instance = S();
      S._current = instance;

      return instance;
    });
  }

  static S of(BuildContext context) {
    final instance = S.maybeOf(context);
    assert(instance != null,
        'No instance of S present in the widget tree. Did you add S.delegate in localizationsDelegates?');
    return instance!;
  }

  static S? maybeOf(BuildContext context) {
    return Localizations.of<S>(context, S);
  }

  /// `Freegi`
  String get appName {
    return Intl.message(
      'Freegi',
      name: 'appName',
      desc: 'Application Name',
      args: [],
    );
  }

  /// `Pick the  Items you want and add them to your Shopping Cart.`
  String get labelOverviewText1 {
    return Intl.message(
      'Pick the  Items you want and add them to your Shopping Cart.',
      name: 'labelOverviewText1',
      desc: '',
      args: [],
    );
  }

  /// `Select your Items to Buy`
  String get labelOverviewHeader1 {
    return Intl.message(
      'Select your Items to Buy',
      name: 'labelOverviewHeader1',
      desc: '',
      args: [],
    );
  }

  /// `Order item from your Shopping Bag`
  String get labelOverviewHeader2 {
    return Intl.message(
      'Order item from your Shopping Bag',
      name: 'labelOverviewHeader2',
      desc: '',
      args: [],
    );
  }

  /// `Complete your purchase by checking out and providing payment information for the items in your shopping bag.`
  String get labelOverviewText2 {
    return Intl.message(
      'Complete your purchase by checking out and providing payment information for the items in your shopping bag.',
      name: 'labelOverviewText2',
      desc: '',
      args: [],
    );
  }

  /// `Our System Delivery Item to you`
  String get labelOverviewHeader3 {
    return Intl.message(
      'Our System Delivery Item to you',
      name: 'labelOverviewHeader3',
      desc: '',
      args: [],
    );
  }

  /// `Once your order is processed, our system will deliver the item(s) to you according to the selected delivery method.`
  String get labelOverviewText3 {
    return Intl.message(
      'Once your order is processed, our system will deliver the item(s) to you according to the selected delivery method.',
      name: 'labelOverviewText3',
      desc: '',
      args: [],
    );
  }
}

class AppLocalizationDelegate extends LocalizationsDelegate<S> {
  const AppLocalizationDelegate();

  List<Locale> get supportedLocales {
    return const <Locale>[
      Locale.fromSubtags(languageCode: 'en'),
    ];
  }

  @override
  bool isSupported(Locale locale) => _isSupported(locale);
  @override
  Future<S> load(Locale locale) => S.load(locale);
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
