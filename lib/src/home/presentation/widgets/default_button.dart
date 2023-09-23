import 'package:flutter/material.dart';
import 'package:project_1/core/res/colours.dart';
class MyButton extends StatelessWidget{
  const MyButton({super.key, required this.title,required this.onPressed});

  final String title;
  final VoidCallback onPressed;
  @override
  Widget build(BuildContext context) {
    return  Container(
      margin: const EdgeInsets.only(bottom: 12),
      child: Material(
        elevation: 5,
        color: Colours.primaryColour,
        borderRadius: BorderRadius.circular(8.0),
        child: MaterialButton(
          onPressed: onPressed,
          minWidth: 343,
          height:  48,
          child: Text(title,style: const TextStyle(color: Colors.white),),
        ),
      ),
    );

  }

}