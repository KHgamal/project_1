import 'package:flutter/material.dart';
import 'package:project_1/core/res/styles.dart';
import 'package:project_1/src/home/presentation/widgets/default_button.dart';

import '../../../../core/res/colours.dart';
import '../widgets/logo_image.dart';
import '../../../../generated/l10n.dart';
import '../widgets/text_field.dart';
class LoginView extends StatelessWidget {
   const LoginView({Key? key}) : super(key: key);
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Padding(
          padding: const EdgeInsets.only(top:20 , left: 20 , right: 20),
          child: SingleChildScrollView(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                const LogoImage(),
                const SizedBox(height:20,),
                Text(S.of(context).login_title , style: Styles.textStyle24,),
                const SizedBox(height: 8,),
                Text(S.of(context).login_hint , style: const TextStyle(
                    fontSize: 16 , fontWeight: FontWeight.w500, color: Colours.txtDetailedColor,
                )),
                const SizedBox(height:18,),
                Text(S.of(context).email_label , style: Styles.textFieldLabel),
                const SizedBox(height: 8,),
                const CustomTextFormField(
                  obscureText: false,
                  hintText: "example@mail.com",
                ),
                const SizedBox(height:12,),
                //password
                Text(S.of(context).password_label , style:Styles.textFieldLabel),
                const SizedBox(height: 8,),
                const CustomTextFormField(
                  obscureText:true,
                  hintText: "●●●●●●●●",
                ),
                Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Row(
                      children: [
                        Checkbox(
                          side: const BorderSide(color: Colours.txtDetailedColor, width: 1.38),
                          value: false,
                          onChanged: (bool? value) {  },
                        ),
                        Text(S.of(context).remember_me , style:Styles.textStyle12,)
                      ],
                    ),
                    TextButton(
                      onPressed: (){},
                      child: Text(S.of(context).forget_password,style:Styles.textStyle12.copyWith(
                        color: Colours.primaryColour , decoration: TextDecoration.underline,
                      ) , ),
                    ),

                  ],
                ),
                const SizedBox(height: 8,),
                MyButton(title: S.of(context).login_title, onPressed: (){}),
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: [
                    Text(S.of(context).do_not_have_account,
                    style: Styles.textFieldLabel.copyWith(
                        color: Colors.black.withOpacity(0.62)),),
                    TextButton(
                      onPressed: (){},
                      child: Text(S.of(context).sign_up_text_button,
                        style: Styles.textFieldLabel.copyWith(
                          decoration:TextDecoration.underline ),),
                    ),
                  ],
                )
              ],
            ),
          ),
        ),
      ),
    );
  }
}
