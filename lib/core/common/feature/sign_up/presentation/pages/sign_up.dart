import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:project_1/core/res/styles.dart';

import '../../../../../../generated/l10n.dart';
import '../../../../../res/colours.dart';
import '../../../../../res/fonts.dart';
import '../../../../../res/media_res.dart';
import '../widgets/check_box.dart';
import '../widgets/default_form_field.dart';

class SignUpScreen extends StatefulWidget {

  static const route = '/signup';

  @override
  State<SignUpScreen> createState() => _SignUpScreenState();
}

class _SignUpScreenState extends State<SignUpScreen> {
  @override
  Widget build(BuildContext context) {

    TextEditingController _fullNameController =
        TextEditingController();
    TextEditingController _emailController =
        TextEditingController();
    TextEditingController _phoneController =
    TextEditingController();
    TextEditingController _passwordController = TextEditingController();
    TextEditingController _confirmPasswordController = TextEditingController();
    return Scaffold(
      backgroundColor: Colors.white,
        body: SingleChildScrollView(
            child: Container(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
          children: [
            SizedBox(
              height: 77,
            ),
        Image.asset(
          Media.logo,
          height: 87,
          width: 83,
        ),

        Padding(
          padding: const EdgeInsets.only(top: 8),
          child: Text(S.of(context).create_account, style: TextStyle( fontSize: 24, fontWeight: FontWeight.w700,
              fontFamily: Fonts.cairo,),),
        ),
            SizedBox(
              height: 4,
            ),


        Text(S.of(context).fill_form, style: Styles.textStyle16Detailed,),

            SizedBox(
              height: 15,
            ),
            Padding(
              padding:const EdgeInsets.only(top: 8.0,bottom: 8),
              child: Text(S.of(context).full_name, style: Styles.textStyle18Primary,),
            ),

    DefaultFormField(
    controller: _fullNameController,
    label: S.of(context).name_example,
    validate: (value) {
    return null;
    },
    ),
            Padding(
              padding: const EdgeInsets.only(top: 8.0,bottom: 8),
              child: Text(S.of(context).enter_phone_number, style: Styles.textStyle18Primary,),
            ),
            Container(height: 68,
              child: IntlPhoneField(
                controller: _phoneController,
                textAlign: TextAlign.left,
                showCursor: false,
                dropdownIconPosition: IconPosition.trailing,

                decoration: InputDecoration(
                  hintText:  S.of(context).phone_number_example,
                  hintStyle:Styles.textStyle14blue ,
                  enabledBorder: OutlineInputBorder(
                    borderSide: BorderSide(
                      color: Colours.primaryColour.withOpacity(0.5),
                    ),
                  ),
                ),
                initialCountryCode: 'SA',
                onChanged: (phone) {

                },
              ),
            ),


            Padding(
              padding: const EdgeInsets.only(top: 8.0,bottom: 8),
              child: Text(S.of(context).enter_email, style: Styles.textStyle18Primary,),
            ),
    DefaultFormField(
    controller: _emailController,
    label:S.of(context).email_example,
    validate: (value) {
    bool emailValid = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9.!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
        .hasMatch(value!);
    if (value == null || value.isEmpty || !emailValid) {
    return "Please enter a valid email address";
    }
    return null;
    },
    ),
            Padding(
              padding:const EdgeInsets.only(top: 8.0,bottom: 8),
              child: Text(S.of(context).create_password, style: Styles.textStyle18Primary,),
            ),
    DefaultFormField(
    controller: _passwordController,
    label: S.of(context).create_password,
    validate: (value) {
    return null;
    },
    isPassword: true,
    ),

            Padding(
              padding: const EdgeInsets.only(top: 8.0,bottom: 8),
              child: Text(S.of(context).confirm_password, style: Styles.textStyle18Primary,),
            ),
            DefaultFormField(
              controller: _confirmPasswordController,
              label: S.of(context).create_password,
              validate: (value) {
                return null;
              },
              isPassword: true,
            ),

            Padding(
              padding:const EdgeInsets.only(top: 8.0,bottom: 8),
              child: TermsAndConditionsCheckbox(
                isChecked: true,
                onChanged: (value) {
                },

              ),
            ),
      SizedBox(
        height: 47,
        child: ElevatedButton(
          onPressed: () {

          },
          style: ElevatedButton.styleFrom(
            backgroundColor: Colours.primaryColour,
            shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0),),
          ),
          child: Text(
            S.of(context).save_complete, style: TextStyle(
              fontSize: 16 , fontWeight: FontWeight.w700, color: Colors.white,
              fontFamily: Fonts.cairo
          ),
          ),
        ),
      ),
                SizedBox(
                    height: 47,)
    ])
    )));
  }
}
