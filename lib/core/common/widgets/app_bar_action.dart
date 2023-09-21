import 'package:flutter/material.dart';

import '../../res/colours.dart';
class AppBarAction extends StatelessWidget {
  const AppBarAction({Key? key, required this.child,required this.onTap}) : super(key: key);
 final Widget child;
 final void Function() onTap;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        width: 40,
        height: 40,
        decoration: BoxDecoration(
          color: Colours.secondaryColour,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: InkWell(
          onTap:onTap,
          splashColor: Colors.transparent,
          borderRadius: BorderRadius.circular(24),
          child:child,
        ),
      ),
    );
  }
}

