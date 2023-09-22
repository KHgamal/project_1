import 'package:flutter/material.dart';

import '../../../../core/res/colours.dart';
import '../../../../core/res/styles.dart';
import '../../../../generated/l10n.dart';

class ShippingInformationContainer extends StatelessWidget {
  const ShippingInformationContainer({Key? key, required this.title, required this.shippingDescription, required this.shippingType, required this.weight, required this.temperature, required this.humidity, required this.markDetails}) : super(key: key);
  final String title;
  final String shippingDescription;
  final String shippingType;
  final String weight;
  final String temperature;
  final String humidity;
  final String markDetails;

  @override
  Widget build(BuildContext context) {
    final isLandScape=MediaQuery.of(context).orientation==Orientation.landscape;
    return LayoutBuilder(
        builder: (context , constrain) {
          return Container(
            margin: const EdgeInsets.only(top: 24, right: 16, left: 16),
            padding:const EdgeInsets.all(16) ,
            height: isLandScape? constrain.maxWidth*0.3: constrain.maxWidth*0.5,
            width: constrain.maxWidth*0.9,
            decoration: BoxDecoration(
              color: Colours.secondaryColour,
              borderRadius: BorderRadius.circular(10.0),
            ),
            child: SingleChildScrollView(
              child:Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  Text(title , style:Styles.textStyle16),
                  const SizedBox(height: 12,),
                  Text(S.of(context).shipping_description + " : $shippingDescription " , style: Styles.textStyle14) ,
                  const SizedBox(height: 8,),
                  Text(S.of(context).shipping_type + " : $shippingType " , style:Styles.textStyle14),
                  const SizedBox(height: 8,),
                  Text(S.of(context).weight + " : $weight" + "   " +
                      S.of(context).temperature +  "  : $temperature " + "   " +
                      S.of(context).humidity +" : $humidity " ,
                      style:Styles.textStyle14),
                  const SizedBox(height: 8,),
                  Text(S.of(context).distinctive_mark + " : $markDetails" , style: Styles.textStyle14),
                ],
              ),
            ),
          );
        }
    );
  }
}
