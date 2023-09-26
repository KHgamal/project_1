import 'package:flutter/material.dart';
import 'package:project_1/core/res/colours.dart';
import 'package:project_1/core/res/fonts.dart';

class SaveOrSubmitButtonSignUp extends StatelessWidget {
  const SaveOrSubmitButtonSignUp({
    super.key,
    required this.function,
    required this.text,
  });

  final VoidCallback function;
  final String text;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 47,
      child: ElevatedButton(
        onPressed: function,
        style: ElevatedButton.styleFrom(
          backgroundColor: Colours.primaryColour,
          shape:RoundedRectangleBorder(borderRadius: BorderRadius.circular(4.0),),
        ),
        child: Text(
          text, style: const TextStyle(
            fontSize: 16 , fontWeight: FontWeight.w700, color: Colors.white,
            fontFamily: Fonts.cairo
        ),
        ),
      ),
    );
  }
}