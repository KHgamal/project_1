import 'package:flutter/material.dart';
import 'package:project_1/core/res/styles.dart';
import 'package:project_1/generated/l10n.dart';
import 'package:project_1/src/authentication/presentation/bloc/sign_up/sign_up_cubit.dart';
import 'package:project_1/src/authentication/presentation/widgets/sign_up_header.dart';
import 'package:project_1/src/authentication/presentation/widgets/upload_document_container.dart';

class AddDocumentsScreen extends StatelessWidget {
  const AddDocumentsScreen({
  required this.signUp
  ,super.key});
  static const route = '/add-documents-screen';
  final SignUpCubit signUp;

  @override
  Widget build(BuildContext context) {
    final size = MediaQuery.of(context).size;
    return Scaffold(
      backgroundColor: Colors.white,
      body: SafeArea(
          child: SingleChildScrollView(
            child: Container(
              padding: const EdgeInsets.symmetric(horizontal: 32),
              child: Column(
                crossAxisAlignment: CrossAxisAlignment.stretch,
                children: [
                  SignUpHeader(size: size),
                  Padding(
                    padding: const EdgeInsets.only(top: 20),
                    child: Text(S.of(context).signup_title_page2
                      , style: Styles.textStyle24,),
                  ),
                  const SizedBox(
                    height: 16,
                  ),
                  Text(S.of(context).signup_subtitle1_page2, style: Styles.textStyle16Detailed,),
                  const SizedBox(
                    height: 15,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: UploadDocumentContainer(
                          function: (){

                          },
                          textWidget:
                          Column(
                            children: [
                               Text(
                                S.of(context).signup_imageUploadText1_page2,
                                style: Styles.textStyle12,
                              ),
                              RichText(
                                  text:TextSpan(text: 'الأمامية', style: Styles.textStyle12.copyWith(
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.underline,
                                  ),
                                      children: [
                                        TextSpan(
                                          text: ' من إقامتك',
                                          style: Styles.textStyle12.copyWith(
                                              decoration: TextDecoration.none
                                          ),
                                        )
                                      ]
                                  )
                              )

                            ],),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        child: UploadDocumentContainer(
                          function: (){

                          },
                          textWidget:
                          Column(
                              children: [
                                 Text(
                                  S.of(context).signup_imageUploadText1_page2,
                                  style: Styles.textStyle12,
                                ),
                                RichText(
                                    text:TextSpan(text: 'الخلفية', style: Styles.textStyle12.copyWith(
                                      fontWeight: FontWeight.w700,
                                      decoration: TextDecoration.underline,
                                    ),
                                        children: [
                                          TextSpan(
                                            text: ' من إقامتك',
                                            style: Styles.textStyle12.copyWith(
                                              decoration: TextDecoration.none
                                            ),

                                          )
                                        ]
                                    )
                                )

                              ],),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(S.of(context).signup_subtitle2_page2, style: Styles.textStyle16Detailed,),
                  const SizedBox(
                    height: 10,
                  ),
                  Row(
                    children: [
                      Expanded(
                        child: UploadDocumentContainer(
                          function: (){

                          },
                          textWidget:
                          Column(
                            children: [
                              Text(
                                S.of(context).signup_imageUploadText1_page2,
                                style: Styles.textStyle12,
                              ),
                              RichText(
                                  text:TextSpan(text: 'الأمامية', style: Styles.textStyle12.copyWith(
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.underline,
                                  ),
                                      children: [
                                        TextSpan(
                                          text: ' من إقامتك',
                                          style: Styles.textStyle12.copyWith(
                                              decoration: TextDecoration.none
                                          ),
                                        )
                                      ]
                                  )
                              )

                            ],),
                        ),
                      ),
                      const SizedBox(width: 10,),
                      Expanded(
                        child: UploadDocumentContainer(
                          function: (){

                          },
                          textWidget:
                          Column(
                            children: [
                              Text(
                                S.of(context).signup_imageUploadText1_page2,
                                style: Styles.textStyle12,
                              ),
                              RichText(
                                  text:TextSpan(text: 'الخلفية', style: Styles.textStyle12.copyWith(
                                    fontWeight: FontWeight.w700,
                                    decoration: TextDecoration.underline,
                                  ),
                                      children: [
                                        TextSpan(
                                          text: ' من إقامتك',
                                          style: Styles.textStyle12.copyWith(
                                              decoration: TextDecoration.none
                                          ),

                                        )
                                      ]
                                  )
                              )

                            ],),
                        ),
                      ),
                    ],
                  ),
                  const SizedBox(
                    height: 15,
                  ),
                  Text(S.of(context).signup_subtitle3_page2, style: Styles.textStyle16Detailed,),
                  const SizedBox(
                    height: 10,
                  ),
                  UploadDocumentContainer(
                    function: (){
                    },
                    defaultText: true,
                  ),

                ],
              ),
            ),
          )
      ),
    );
  }
}
