import 'package:flutter/material.dart';
import 'package:project_1/core/res/colours.dart';
class MyButton extends StatelessWidget{
  const MyButton({super.key,
    required this.title,
    required this.onPressed,
    required this.textColor,
    required this.buttonColor,

  });

  final String title;
  final Color textColor;
  final Color buttonColor;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return  Container(
      decoration: BoxDecoration(
        color: buttonColor,
        border:Border.all( color: Colours.primaryColour),
        borderRadius: BorderRadius.circular(8.0),
      ),
      margin: const EdgeInsets.only(bottom: 12),
      child: MaterialButton(
        onPressed: onPressed,
        minWidth: 343,
        height:  48,
        child: Text(title,style:TextStyle(color: textColor),),
      ),
    );

  }

}