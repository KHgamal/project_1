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

  /// `Welcome`
  String get title {
    return Intl.message(
      'Welcome',
      name: 'title',
      desc: '',
      args: [],
    );
  }

  /// `Ahmed`
  String get user_name {
    return Intl.message(
      'Ahmed',
      name: 'user_name',
      desc: '',
      args: [],
    );
  }

  /// `Today's products `
  String get product_title {
    return Intl.message(
      'Today\'s products ',
      name: 'product_title',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get navbar_main {
    return Intl.message(
      'Home',
      name: 'navbar_main',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get navbar_offers {
    return Intl.message(
      'Home',
      name: 'navbar_offers',
      desc: '',
      args: [],
    );
  }

  /// `Home`
  String get navbar_profile {
    return Intl.message(
      'Home',
      name: 'navbar_profile',
      desc: '',
      args: [],
    );
  }

  /// `Product's information`
  String get product_detail_title {
    return Intl.message(
      'Product\'s information',
      name: 'product_detail_title',
      desc: '',
      args: [],
    );
  }

  /// `Sender information`
  String get sender_info {
    return Intl.message(
      'Sender information',
      name: 'sender_info',
      desc: '',
      args: [],
    );
  }

  /// `Receiver information`
  String get receiver_info {
    return Intl.message(
      'Receiver information',
      name: 'receiver_info',
      desc: '',
      args: [],
    );
  }

  /// `Shipping information`
  String get shipping_info {
    return Intl.message(
      'Shipping information',
      name: 'shipping_info',
      desc: '',
      args: [],
    );
  }

  /// `Shipping description`
  String get shipping_description {
    return Intl.message(
      'Shipping description',
      name: 'shipping_description',
      desc: '',
      args: [],
    );
  }

  /// `Shipping type`
  String get shipping_type {
    return Intl.message(
      'Shipping type',
      name: 'shipping_type',
      desc: '',
      args: [],
    );
  }

  /// `Weight`
  String get weight {
    return Intl.message(
      'Weight',
      name: 'weight',
      desc: '',
      args: [],
    );
  }

  /// `Temperature`
  String get temperature {
    return Intl.message(
      'Temperature',
      name: 'temperature',
      desc: '',
      args: [],
    );
  }

  /// `Humidity`
  String get humidity {
    return Intl.message(
      'Humidity',
      name: 'humidity',
      desc: '',
      args: [],
    );
  }

  /// `Phone number`
  String get phone_number {
    return Intl.message(
      'Phone number',
      name: 'phone_number',
      desc: '',
      args: [],
    );
  }

  /// `Distinctive mark`
  String get distinctive_mark {
    return Intl.message(
      'Distinctive mark',
      name: 'distinctive_mark',
      desc: '',
      args: [],
    );
  }

  /// `Address details`
  String get address_details {
    return Intl.message(
      'Address details',
      name: 'address_details',
      desc: '',
      args: [],
    );
  }

  /// `Building number`
  String get building_number {
    return Intl.message(
      'Building number',
      name: 'building_number',
      desc: '',
      args: [],
    );
  }

  /// `Floor number`
  String get floor_number {
    return Intl.message(
      'Floor number',
      name: 'floor_number',
      desc: '',
      args: [],
    );
  }

  /// `Apartment number`
  String get apartment_number {
    return Intl.message(
      'Apartment number',
      name: 'apartment_number',
      desc: '',
      args: [],
    );
  }

  /// ` Region `
  String get region {
    return Intl.message(
      ' Region ',
      name: 'region',
      desc: '',
      args: [],
    );
  }

  /// `Destination region`
  String get destination_region {
    return Intl.message(
      'Destination region',
      name: 'destination_region',
      desc: '',
      args: [],
    );
  }

  /// `Product name`
  String get product_name {
    return Intl.message(
      'Product name',
      name: 'product_name',
      desc: '',
      args: [],
    );
  }

  /// ` Type `
  String get type {
    return Intl.message(
      ' Type ',
      name: 'type',
      desc: '',
      args: [],
    );
  }

  /// `Send offer`
  String get send_offer {
    return Intl.message(
      'Send offer',
      name: 'send_offer',
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
      Locale.fromSubtags(languageCode: 'ar'),
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
