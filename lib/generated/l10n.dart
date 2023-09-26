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

  /// `Create Account`
  String get create_account {
    return Intl.message(
      'Create Account',
      name: 'create_account',
      desc: '',
      args: [],
    );
  }

  /// `Please fill out the form`
  String get fill_form {
    return Intl.message(
      'Please fill out the form',
      name: 'fill_form',
      desc: '',
      args: [],
    );
  }

  /// `Enter your full name`
  String get full_name {
    return Intl.message(
      'Enter your full name',
      name: 'full_name',
      desc: '',
      args: [],
    );
  }

  /// `Ahmed Al-Anizi`
  String get name_example {
    return Intl.message(
      'Ahmed Al-Anizi',
      name: 'name_example',
      desc: '',
      args: [],
    );
  }

  /// `Enter your phone number`
  String get enter_phone_number {
    return Intl.message(
      'Enter your phone number',
      name: 'enter_phone_number',
      desc: '',
      args: [],
    );
  }

  /// `504X XXX XXX`
  String get phone_number_example {
    return Intl.message(
      '504X XXX XXX',
      name: 'phone_number_example',
      desc: '',
      args: [],
    );
  }

  /// `Enter your email`
  String get enter_email {
    return Intl.message(
      'Enter your email',
      name: 'enter_email',
      desc: '',
      args: [],
    );
  }

  /// `example@mail.com`
  String get email_example {
    return Intl.message(
      'example@mail.com',
      name: 'email_example',
      desc: '',
      args: [],
    );
  }

  /// `Create your password`
  String get create_password {
    return Intl.message(
      'Create your password',
      name: 'create_password',
      desc: '',
      args: [],
    );
  }

  /// `Confirm your password`
  String get confirm_password {
    return Intl.message(
      'Confirm your password',
      name: 'confirm_password',
      desc: '',
      args: [],
    );
  }

  /// `I agree to the terms and conditions`
  String get agree_terms {
    return Intl.message(
      'I agree to the terms and conditions',
      name: 'agree_terms',
      desc: '',
      args: [],
    );
  }

  /// `Save and complete your account creation`
  String get save_complete {
    return Intl.message(
      'Save and complete your account creation',
      name: 'save_complete',
      desc: '',
      args: [],
    );
  }

  /// `Login`
  String get login_title {
    return Intl.message(
      'Login',
      name: 'login_title',
      desc: '',
      args: [],
    );
  }

  /// `please , login to your account to continue`
  String get login_hint {
    return Intl.message(
      'please , login to your account to continue',
      name: 'login_hint',
      desc: '',
      args: [],
    );
  }

  /// `Enter Email or phone number`
  String get email_label {
    return Intl.message(
      'Enter Email or phone number',
      name: 'email_label',
      desc: '',
      args: [],
    );
  }

  /// `password`
  String get password_label {
    return Intl.message(
      'password',
      name: 'password_label',
      desc: '',
      args: [],
    );
  }

  /// `Remember me`
  String get remember_me {
    return Intl.message(
      'Remember me',
      name: 'remember_me',
      desc: '',
      args: [],
    );
  }

  /// `Did you forget your password ?`
  String get forget_password {
    return Intl.message(
      'Did you forget your password ?',
      name: 'forget_password',
      desc: '',
      args: [],
    );
  }

  /// `Sign up`
  String get sign_up_text_button {
    return Intl.message(
      'Sign up',
      name: 'sign_up_text_button',
      desc: '',
      args: [],
    );
  }

  /// `don't have an account ?`
  String get do_not_have_account {
    return Intl.message(
      'don\'t have an account ?',
      name: 'do_not_have_account',
      desc: '',
      args: [],
    );
  }

  /// `this index is required`
  String get error_creating_account {
    return Intl.message(
      'this index is required',
      name: 'error_creating_account',
      desc: '',
      args: [],
    );
  }

  /// `please enter a valid number`
  String get error_number_length {
    return Intl.message(
      'please enter a valid number',
      name: 'error_number_length',
      desc: '',
      args: [],
    );
  }

  /// `confirm password and password must be the same`
  String get error_password_match {
    return Intl.message(
      'confirm password and password must be the same',
      name: 'error_password_match',
      desc: '',
      args: [],
    );
  }

  /// `not less than 4 characters`
  String get error_name_length {
    return Intl.message(
      'not less than 4 characters',
      name: 'error_name_length',
      desc: '',
      args: [],
    );
  }

  /// `not less than 6 characters`
  String get error_password_length {
    return Intl.message(
      'not less than 6 characters',
      name: 'error_password_length',
      desc: '',
      args: [],
    );
  }

  /// `must accept terms and conditions to continue`
  String get error_terms_accept {
    return Intl.message(
      'must accept terms and conditions to continue',
      name: 'error_terms_accept',
      desc: '',
      args: [],
    );
  }

  /// `upload verification documents`
  String get signup_title_page2 {
    return Intl.message(
      'upload verification documents',
      name: 'signup_title_page2',
      desc: '',
      args: [],
    );
  }

  /// `upload any id card for you`
  String get signup_subtitle1_page2 {
    return Intl.message(
      'upload any id card for you',
      name: 'signup_subtitle1_page2',
      desc: '',
      args: [],
    );
  }

  /// `(only files of type jpg are supported)`
  String get signup_imageUpload_page2 {
    return Intl.message(
      '(only files of type jpg are supported)',
      name: 'signup_imageUpload_page2',
      desc: '',
      args: [],
    );
  }

  /// `choose file to upload`
  String get signup_imageUploadText1_page2 {
    return Intl.message(
      'choose file to upload',
      name: 'signup_imageUploadText1_page2',
      desc: '',
      args: [],
    );
  }

  /// `if you are a foreign then upload`
  String get signup_subtitle2_page2 {
    return Intl.message(
      'if you are a foreign then upload',
      name: 'signup_subtitle2_page2',
      desc: '',
      args: [],
    );
  }

  /// `upload driving licence`
  String get signup_subtitle3_page2 {
    return Intl.message(
      'upload driving licence',
      name: 'signup_subtitle3_page2',
      desc: '',
      args: [],
    );
  }

  /// `choose file to upload`
  String get signup_imageUploadText2_page2 {
    return Intl.message(
      'choose file to upload',
      name: 'signup_imageUploadText2_page2',
      desc: '',
      args: [],
    );
  }

  /// `4. Upload the vehicle form`
  String get signup_subtitle4_page2 {
    return Intl.message(
      '4. Upload the vehicle form',
      name: 'signup_subtitle4_page2',
      desc: '',
      args: [],
    );
  }

  /// `5. Upload the driver card`
  String get signup_subtitle5_page2 {
    return Intl.message(
      '5. Upload the driver card',
      name: 'signup_subtitle5_page2',
      desc: '',
      args: [],
    );
  }

  /// `6. Upload the driver card`
  String get signup_subtitle6_page2 {
    return Intl.message(
      '6. Upload the driver card',
      name: 'signup_subtitle6_page2',
      desc: '',
      args: [],
    );
  }

  /// `7. Upload a transfer document`
  String get signup_subtitle7_page2 {
    return Intl.message(
      '7. Upload a transfer document',
      name: 'signup_subtitle7_page2',
      desc: '',
      args: [],
    );
  }

  /// `save data`
  String get data_saving {
    return Intl.message(
      'save data',
      name: 'data_saving',
      desc: '',
      args: [],
    );
  }

  /// `HI!  👋`
  String get hi {
    return Intl.message(
      'HI!  👋',
      name: 'hi',
      desc: '',
      args: [],
    );
  }

  /// `Or`
  String get or {
    return Intl.message(
      'Or',
      name: 'or',
      desc: '',
      args: [],
    );
  }

  /// `Document verification`
  String get document_verification {
    return Intl.message(
      'Document verification',
      name: 'document_verification',
      desc: '',
      args: [],
    );
  }

  /// `Please wait a few minutes`
  String get verification_loading_head {
    return Intl.message(
      'Please wait a few minutes',
      name: 'verification_loading_head',
      desc: '',
      args: [],
    );
  }

  /// `Our team is now verifying the authenticity of the supporting documents`
  String get verification_loading_body {
    return Intl.message(
      'Our team is now verifying the authenticity of the supporting documents',
      name: 'verification_loading_body',
      desc: '',
      args: [],
    );
  }

  /// `start charging`
  String get start_charging {
    return Intl.message(
      'start charging',
      name: 'start_charging',
      desc: '',
      args: [],
    );
  }

  /// `Congratulations!`
  String get verification_done_head {
    return Intl.message(
      'Congratulations!',
      name: 'verification_done_head',
      desc: '',
      args: [],
    );
  }

  /// `All documents have been verified, and you can start directlyً`
  String get verification_done_body {
    return Intl.message(
      'All documents have been verified, and you can start directlyً',
      name: 'verification_done_body',
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
