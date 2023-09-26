import 'package:flutter/material.dart';
import 'package:project_1/core/res/colours.dart';
import 'package:project_1/core/res/styles.dart';
import 'package:project_1/generated/l10n.dart';

class UploadDocumentContainer extends StatelessWidget {

  const UploadDocumentContainer({
  required this.function,
  this.textWidget,
  this.defaultText = false
  ,super.key});
  final VoidCallback function;
  final Widget? textWidget;
  final bool defaultText;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){

      },
      highlightColor: Colors.transparent,
      splashColor: Colors.transparent,
      child: Container(
        height: 135,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(8),
          color: Colours.accentColour,
        ),
        child: Center(
          child: Column(
            mainAxisAlignment: MainAxisAlignment.spaceEvenly,
            children: [
               Icon(Icons.file_upload_outlined,
              size: 28,color: Colours.primaryColour.withOpacity(0.42),

              ),
              (defaultText)?
                  Text(
                    S.of(context).signup_imageUploadText2_page2,
                    style: Styles.textStyle14.copyWith(
                      color: Colours.txtMainColor,
                      fontWeight: FontWeight.w500,
                    ),
                  ):
              textWidget!,
              Text(
                S.of(context).signup_imageUpload_page2,
                style: Styles.textStyle10.copyWith(
                  color: Colours.txtDetailedColor,
                ),
              )
            ],
          ),
        ),
      ),
    );
  }
}
