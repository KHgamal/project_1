import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl_phone_field/country_picker_dialog.dart';
import 'package:intl_phone_field/intl_phone_field.dart';
import 'package:project_1/core/res/styles.dart';
import 'package:project_1/src/authentication/presentation/bloc/sign_up/sign_up_cubit.dart';
import 'package:project_1/src/authentication/presentation/views/add_documents_screen.dart';
import 'package:project_1/src/authentication/presentation/widgets/save_or_submit_button_sign_up.dart';
import 'package:project_1/src/authentication/presentation/widgets/sign_up_header.dart';
import 'package:provider/provider.dart';
import '../../../../generated/l10n.dart';
import '../../../../core/res/colours.dart';
import '../widgets/check_box.dart';
import '../widgets/default_form_field.dart';

class SignUpScreen extends StatelessWidget {

  static const route = '/signup';

  SignUpScreen({super.key});

  final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    final signUp = context.read<SignUpCubit>();
    return Scaffold(
      backgroundColor: Colors.white,
        body: SafeArea(
          child: SingleChildScrollView(
              child: Container(
      padding: const EdgeInsets.symmetric(horizontal: 33),
      child: Form(
        key: formKey,
        child: Column(crossAxisAlignment: CrossAxisAlignment.stretch,
              children: [
                SignUpHeader(size: size),

            Padding(
              padding: const EdgeInsets.only(top: 8),
              child: Text(S.of(context).create_account
                , style: Styles.textStyle24,),
            ),
                const SizedBox(
                  height: 4,
                ),
            Text(S.of(context).fill_form, style: Styles.textStyle16Detailed,),
                const SizedBox(
                  height: 15,
                ),
                Padding(
                  padding:const EdgeInsets.only(top: 8.0,bottom: 8),
                  child: Text(S.of(context).full_name, style: Styles.textStyle18Primary,),
                ),

                DefaultFormField(
                controller: signUp.fullNameController,
                label: S.of(context).name_example,
                  hasValidator: true,
                  validate: (text){
                    if(text == null || text.isEmpty){
                      return S.of(context).error_creating_account;
                    }else{
                      if(text.length < 4){
                        return S.of(context).error_name_length;

                      }
                    }
                    return null;
                  },

                ),
                Padding(
                  padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                  child: Text(S.of(context).enter_phone_number, style: Styles.textStyle18Primary,),
                ),
                IntlPhoneField(
                  textAlign: TextAlign.right,
                  validator: (phoneNum){
                    if(phoneNum == null || phoneNum.number.isEmpty){
                      return S.of(context).error_creating_account;
                    }else{
                      if(phoneNum.number.runtimeType is! num){
                        return S.of(context).error_number_length;
                      }
                    }
                    return null;
                  },
                  onChanged: null,
                  pickerDialogStyle: PickerDialogStyle(
                    backgroundColor: Colours.accentColour
                  ),
                  controller: signUp.phoneController,
                  showDropdownIcon: false,
                  invalidNumberMessage: S.of(context).error_number_length,
                  decoration: InputDecoration(
                    hintText:  S.of(context).phone_number_example,
                    hintStyle:Styles.textStyle14blue ,
                    enabledBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colours.primaryColour.withOpacity(0.5),
                      ),
                    ),
                    focusedBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colours.primaryColour.withOpacity(0.5),
                      ),
                    ),
                    errorBorder: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colours.primaryColour.withOpacity(0.5),
                      ),
                    ),
                    border: OutlineInputBorder(
                      borderSide: BorderSide(
                        color: Colours.primaryColour.withOpacity(0.5),
                      ),
                    ),
                  ),
                  initialCountryCode: 'SA',
                ),
                Padding(
                  padding: const EdgeInsets.only(bottom: 8),
                  child: Text(S.of(context).enter_email, style: Styles.textStyle18Primary,),
                ),
    DefaultFormField(
    controller: signUp.emailController,
    label:S.of(context).email_example,
    hasValidator: true,
    validate: (value) {
    bool emailValid = RegExp(
    r"^[a-zA-Z0-9.a-zA-Z0-9!#$%&'*+-/=?^_`{|}~]+@[a-zA-Z0-9]+\.[a-zA-Z]+")
            .hasMatch(value!);
    if (value.isEmpty || !emailValid) {
      return S.of(context).error_creating_account;
    }
    return null;
    },
    ),
                Padding(
                  padding:const EdgeInsets.only(top: 8.0,bottom: 8),
                  child: Text(S.of(context).create_password, style: Styles.textStyle18Primary,),
                ),
                DefaultFormField(
                controller: signUp.passwordController,
                label: S.of(context).create_password,
                isPassword: true,
                hasValidator: true,
                  validate: (text){
                    if(text == null || text.isEmpty){
                      return S.of(context).error_creating_account;
                    }else{
                      if(text.length < 6){
                        return S.of(context).error_password_length;
                      }
                    }
                    return null;
                  },
                ),

                Padding(
                  padding: const EdgeInsets.only(top: 8.0,bottom: 8),
                  child: Text(S.of(context).confirm_password, style: Styles.textStyle18Primary,),
                ),
                DefaultFormField(
                  controller: signUp.confirmPasswordController,
                  label: S.of(context).create_password,
                  isPassword: true,
                  hasValidator: true,
                  validate: (text){
                    if(text == null || text.isEmpty){
                      return S.of(context).error_creating_account;
                    }else{
                      if(text.trim() != signUp.passwordController.text.trim()){
                        return S.of(context).error_password_match;
                      }
                    }
                    return null;
                  },
                ),

                Padding(
                  padding:const EdgeInsets.only(top: 8.0,bottom: 8),
                  child: TermsAndConditionsCheckbox(
                    isChecked: signUp.termsCheckBox,
                    onChanged: (value) {
                      signUp.termsCheckBox = value;
                    },

                  ),
                ),
        SaveOrSubmitButtonSignUp(
          text: S.of(context).save_complete,
          function: (){
            if(formKey.currentState!.validate()){
              if(signUp.termsCheckBox != true){
                ScaffoldMessenger.of(context)
                    .showSnackBar(SnackBar(
                backgroundColor: Colours.accentColour
                ,content: Text(
                style: const TextStyle(
                  color: Colors.black,
                )
                ,S.of(context).error_terms_accept)));
              }else{
                Navigator.push(context, MaterialPageRoute
                  (builder: (_)=>AddDocumentsScreen(signUp: signUp,)));
              }
            }
          },
        ),
                    const SizedBox(
                        height: 28,)
    ]),
      )
    )),
        ));
  }
}
