import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:project_1/core/res/styles.dart';

import '../../../../core/res/colours.dart';
class DefaultFormField extends StatefulWidget {
  final TextEditingController controller;
  final String label;
  final Function validate;
  final bool isPassword;
  final Color borderColor;
  final double height;
  final double borderWidth;
  final double width;
  final EdgeInsetsGeometry hintPadding;
  final TextStyle? hintStyle;


  DefaultFormField({
    required this.controller,
    required this.label,
    required this.validate,
    this.isPassword = false,
    this.borderColor = Colours.primaryColour,
    this.height = 47.0,
    this.borderWidth = 0.5,
    this.width = 348,
    this.hintPadding = const EdgeInsets.fromLTRB(12.0, 16.0, 12.0, 0.0),
    this.hintStyle,
  });

  @override
  _DefaultFormFieldState createState() => _DefaultFormFieldState();
}

class _DefaultFormFieldState extends State<DefaultFormField> {
  bool obscureText = false;

  @override
  void initState() {
    obscureText = widget.isPassword;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      width: widget.width,

      child: TextFormField(
        controller: widget.controller,
        validator: (value) {
          return widget.validate(value);
        },
        obscureText: obscureText,
        decoration: InputDecoration(
          contentPadding: widget.hintPadding,
          filled: true,
          fillColor: Colors.white,
          hintText: widget.label,
          hintStyle: Styles.textStyle14blue,
          enabledBorder:OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.51),
            borderSide: BorderSide(
              color:  widget.borderColor.withOpacity(0.5),
              width: widget.borderWidth,
            ),
          ),
          focusedBorder: OutlineInputBorder(
            borderRadius: BorderRadius.circular(5.51),
            borderSide: BorderSide(
              width: widget.borderWidth,
            ),
          ),
          suffixIcon: widget.isPassword
              ? IconButton(
            icon: Icon(
              obscureText ? Icons.visibility : Icons.visibility_off,
              color: Colors.grey,
            ),
            onPressed: () {
              setState(() {
                obscureText = !obscureText;
              });
            },
          )
              : null,
        ),
      ),
    );
  }
}