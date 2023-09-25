import 'package:flutter/material.dart';
import 'package:project_1/core/res/colours.dart';
import 'package:project_1/core/res/media_res.dart';
import 'package:project_1/core/res/styles.dart';
import 'package:project_1/src/home/presentation/widgets/default_button.dart';

import '../../generated/l10n.dart';

class SplashScreen extends StatefulWidget {
  const SplashScreen({Key? key}) : super(key: key);

  @override
  State<SplashScreen> createState() => _SplashScreenState();
}

class _SplashScreenState extends State<SplashScreen> {
  bool animated = false;
  @override
  void initState() {
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
              duration: Duration(milliseconds: 1000),
              bottom: animated? 400: 0,
              left: 0,
              right: 0,
              child: Image(
                image: AssetImage(Media.logo1),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 2000),
              bottom: animated? 170: -500,
              left: 0,
              right: 0,
              child: Image(
                image: AssetImage(Media.logo2),
              ),
            ),
            AnimatedPositioned(
              duration: Duration(milliseconds: 2000),
              bottom: animated? 0: -600,
              left: 0,
              right: 0,
              child: Container(
                width: screenWidth,
                height: screenHeight*0.45,
                decoration: BoxDecoration(
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
                      SizedBox(
                        height: 15,
                      ),
                      MyButton(title: S.of(context).login_title,
                        onPressed: (){},
                        textColor: Colors.white,
                        buttonColor: Colours.primaryColour,
                      ),
                      MyButton(title: S.of(context).create_account,
                        onPressed: (){},
                        textColor: Colours.primaryColour,
                        buttonColor: Colors.white,
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: [
                          Container(
                            width: screenWidth*0.4,
                            height: 1,
                            color: Colors.black,
                          ),
                          SizedBox(
                            height: 5,
                          ),

                          Text(S.of(context).or),
                          SizedBox(
                            height: 5,
                          ),

                          Container(
                            width: screenWidth*0.4,
                            height: 1,
                            color: Colors.black,
                          ),
                        ],
                      ),
                      SizedBox(
                        height: 15,
                      ),
                      Expanded(
                        child: Row(
                          mainAxisAlignment:MainAxisAlignment.center,
                          children: [
                            IconButton(onPressed: (){}, icon:  Image(image: AssetImage(Media.apple))),

                            IconButton(onPressed: (){}, icon:  Image(image: AssetImage(Media.facebook))),

                            IconButton(onPressed: (){}, icon:  Image(image: AssetImage(Media.google))),


                          ],
                        ),
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
    await Future.delayed(Duration(milliseconds: 2000));
    setState(() {
      animated=true;
    });
  }
}
