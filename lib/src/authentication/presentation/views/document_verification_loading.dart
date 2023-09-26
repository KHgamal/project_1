import 'package:flutter/material.dart';
import 'package:project_1/core/res/colours.dart';
import 'package:project_1/core/res/styles.dart';
import 'package:project_1/generated/l10n.dart';
import 'package:project_1/src/home/presentation/widgets/default_button.dart';

import '../../../../core/res/media_res.dart';
import '../widgets/verification_appbar.dart';
class DocumentVerificationLoading extends StatelessWidget {
  const DocumentVerificationLoading({Key? key}) : super(key: key);
  static const route = '/DocumentVerificationLoading';
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: Padding(
            padding:const EdgeInsets.symmetric(horizontal: 16,vertical: 30),
            child: Column(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  const VerificationAppbar(),
                  Column(
                    children: [
                      Image.asset(Media.verificationLoading , width: 257, height: 257,),
                      Text(S.of(context).verification_loading_head, style: Styles.textStyle20Head,),
                      Text(S.of(context).verification_loading_body, style: Styles.textStyle20Body,
                      textAlign: TextAlign.center,),
                    ],
                  ),
                  MyButton(onPressed: (){},
                      buttonColor:Colours.primaryColour.withOpacity(0.5),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                         Icon(Icons.arrow_back, color: Colors.white.withOpacity(0.4),),
                          Text(S.of(context).start_charging, style:  TextStyle(
                            color: Colors.white.withOpacity(0.4)
                          ),),
                          Image.asset(Media.redo),
                        ],
                      ))
                ],
            ),
          )),
    );
  }
}
