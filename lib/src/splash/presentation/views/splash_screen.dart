import 'package:flutter/material.dart';
import 'package:project_1/core/res/colours.dart';
import 'package:project_1/core/res/media_res.dart';
import 'package:project_1/core/res/styles.dart';
import 'package:project_1/src/authentication/presentation/views/login_view.dart';
import 'package:project_1/src/authentication/presentation/views/sign_up.dart';
import 'package:project_1/src/home/presentation/widgets/default_button.dart';

import '../../../../generated/l10n.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({
  required this.animateBottom
  ,Key? key}) : super(key: key);
  final bool animateBottom;

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animated = false;
  @override

  void initState() {
    super.initState();
    startAnimation();
  }
  @override
  Widget build(BuildContext context) {
    double screenWidth= MediaQuery.of(context).size.width;
    double screenHeight= MediaQuery.of(context).size.height;
    return  Scaffold(
      backgroundColor: Colours.primaryColour,
      body:Container(
        width: screenWidth,
        height: screenHeight,
        decoration: BoxDecoration(
          image: DecorationImage(
            fit: BoxFit.cover,
            image: AssetImage(Media.splashBackground),

          )
        ),
        child: Stack(
          children: [
            AnimatedPositioned(
              duration: const Duration(milliseconds: 1000),
              bottom: animated? screenHeight*0.5: 0,
              left: 0,
              right: 0,
              child: Image(
                image: AssetImage(Media.logo1),
              ),
            ),
            AnimatedPositioned(
              duration: const Duration(milliseconds: 2000),
              bottom: animated? (widget.animateBottom)?screenHeight*0.2:0: -500,
              left: 0,
              right: 0,
              child: Image(
                image: AssetImage(Media.logo2),
              ),
            ),
            if(widget.animateBottom)
            AnimatedPositioned(
              onEnd: (){
                //TODO(move to home page):
              },
              duration: const Duration(milliseconds: 2000),
              bottom: animated? screenHeight*0.001: -600,
              left: 0,
              right: 0,
              child: Container(
                width: screenWidth,

                decoration: const BoxDecoration(
                  color: Colors.white,
                  borderRadius: BorderRadius.only(topLeft:Radius.circular(20),topRight:Radius.circular(20),),
                ),
                child: Padding(
                  padding: const EdgeInsets.all(20.0),
                  child: Column(
                    crossAxisAlignment: CrossAxisAlignment.start,
                    children: [
                      Text(
                          S.of(context).hi,
                        style: Styles.textStyle40,
                      ),
                      const SizedBox(
                        height: 15,
                      ),
                      MyButton(
                        onPressed: (){
                        Navigator.pushReplacementNamed(context, LoginView.route);
                        },
                        buttonColor: Colours.primaryColour,
                        child: Text(S.of(context).login_title, style: const TextStyle(
                            color: Colors.white
                        ),),
                      ),
                      MyButton(
                        onPressed: (){
                          Navigator.pushNamed(context, SignUpScreen.route);
                        },
                        buttonColor: Colors.white,
                        border: Border.all(color: Colours.primaryColour),
                        child: Text(S.of(context).create_account, style: const TextStyle(
                            color: Colours.primaryColour ,
                        ),),
                      ),
                    ],
                  ),
                ),

              ),
            ),
          ],
        ),
      ) ,

    );
  }

  Future startAnimation() async{
    await Future.delayed(const Duration(milliseconds: 500));
    setState(() {
      animated=true;
    });
  }
}
