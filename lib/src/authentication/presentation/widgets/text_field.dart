import 'package:flutter/material.dart';
import 'package:project_1/core/res/colours.dart';
class CustomTextFormField extends StatelessWidget {
  const CustomTextFormField({Key? key, required this.obscureText, required this.hintText}) : super(key: key);
 final bool obscureText;
 final String hintText;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47,
      width: 351,
      child: TextFormField(
       // controller: textController,
        obscureText: obscureText,
        decoration: InputDecoration(
            hintStyle:  TextStyle(
              fontSize: 18 , fontWeight: FontWeight.w500, color: Colours.primaryColour.withOpacity(0.5),
            ) ,
            hintText: hintText,
            border:OutlineInputBorder(
              borderRadius: BorderRadius.circular(5),
              borderSide: const BorderSide(color: Colours.primaryColour , width: 0.5)
            ),
            enabledBorder:OutlineInputBorder(
                borderRadius: BorderRadius.circular(5),
                borderSide: const BorderSide(color: Colours.primaryColour ,width: 0.5 )
            ),
            // border:OutlineInputBorder(
            //     borderRadius: BorderRadius.circular(5),
            //     borderSide: const BorderSide(color: Colours.primaryColour , width: 1)
            // )

        ),
      ),
    );
  }
}
