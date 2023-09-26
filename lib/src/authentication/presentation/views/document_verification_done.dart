import 'package:flutter/material.dart';
import 'package:project_1/core/res/colours.dart';
import 'package:project_1/core/res/styles.dart';
import 'package:project_1/generated/l10n.dart';
import 'package:project_1/src/home/presentation/widgets/default_button.dart';

import '../../../../core/res/media_res.dart';
import '../widgets/verification_appbar.dart';
class DocumentVerificationDone extends StatelessWidget {
  const DocumentVerificationDone({Key? key}) : super(key: key);
  static const route = '/DocumentVerificationDone';
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
                    Image.asset(Media.verificationDone , width: 257, height: 257,),
                    Text(S.of(context).verification_done_head, style: Styles.textStyle20Head,),
                    Text(S.of(context).verification_done_body, style: Styles.textStyle20Body,
                      textAlign: TextAlign.center,),
                  ],
                ),
                MyButton(onPressed: (){},
                    buttonColor:Colours.primaryColour,
                    child: Row(

                      children: [
                       const Icon(Icons.arrow_back, color: Colors.white,),
                        const Expanded(child: SizedBox()),
                        Text(S.of(context).start_charging, style: const TextStyle(
                            color: Colors.white
                        ),),
                        const Expanded(child: SizedBox()),
                      ],
                    ))
              ],
            ),
          )),
    );
  }
}