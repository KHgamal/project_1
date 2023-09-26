import 'package:flutter/material.dart';
class LogoImage extends StatelessWidget {
  const LogoImage({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Center(child: Image.asset("assets/images/Logo1.png" , width: 83, height: 87,));
  }
}
