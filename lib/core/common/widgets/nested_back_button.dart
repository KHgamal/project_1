import 'package:flutter/material.dart';
import 'package:project_1/core/extensions/context_extension.dart';
import 'package:project_1/core/res/colours.dart';

class NestedBackButton extends StatefulWidget {
  const NestedBackButton({super.key});

  @override
  State<NestedBackButton> createState() => _NestedBackButtonState();
}

class _NestedBackButtonState extends State<NestedBackButton> {
  @override
  Widget build(BuildContext context) {
    return WillPopScope(
    onWillPop: ()async{
      try{
        context.popTab();
        return false;
      }catch(_){
        return true;
      }
    }
    ,child: Container(
      width: 40,
      height: 40,
      decoration: BoxDecoration(
        color: Colours.secondaryColour,
        borderRadius: BorderRadius.circular(10.0),
      ),
      child: IconButton(onPressed: (){
          try{
            context.popTab();
          }catch(_){
            Navigator.pop(context);
          }
        }
            , icon: const Icon(
        Icons.arrow_forward_ios_outlined,
        color: Colours.txtMainColor,
        size: 24.0,
      ),
        ),
    ),
    );
  }
}
