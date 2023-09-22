import 'package:flutter/material.dart';
import 'package:project_1/core/res/colours.dart';
class MyButton extends StatelessWidget{
  MyButton({required this.title,required this.onPressed});

  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return  Padding(
      padding: const EdgeInsets.only(right: 16.0,left: 16.0,top: 28.0,bottom: 28.0),
      child: Material(
        elevation: 5,
        color: Colours.primaryColour,
        borderRadius: BorderRadius.circular(8.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 343,
          height:  48,
          child: Text(title,style: TextStyle(color: Colors.white),),
        ),
      ),
    );

  }

}