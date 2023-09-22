import 'package:flutter/material.dart';

import '../../../../core/res/colours.dart';
import '../../../../core/res/styles.dart';
import '../../../../generated/l10n.dart';
class SenderReceiverInformationContainer extends StatelessWidget {
  const SenderReceiverInformationContainer({Key? key, required this.title, required this.locationText, required this.addressInDetail, required this.buildingNumber, required this.floorNumber, required this.apartmentNumber, required this.markDetails, required this.phoneNumber}) : super(key: key);
final String title;
final String locationText;
final String addressInDetail;
final String buildingNumber;
final String floorNumber;
final String apartmentNumber;
final String markDetails;
final String phoneNumber;
  @override
  Widget build(BuildContext context) {
    final isLandScape=MediaQuery.of(context).orientation==Orientation.landscape;
    return LayoutBuilder(
      builder: (context , constrain) {
        return Container(
          margin: const EdgeInsets.only(top: 24, right: 16, left: 16),
          padding:const EdgeInsets.all(16) ,
          height: isLandScape? constrain.maxWidth*0.3: constrain.maxWidth*0.55,
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
                Text(S.of(context).region + " : $locationText " , style: Styles.textStyle14) ,
               const SizedBox(height: 8,),
                Text(S.of(context).address_details + " : $addressInDetail " , style:Styles.textStyle14),
               const SizedBox(height: 8,),
                Text(S.of(context).building_number + " : $buildingNumber" + "   " +
                    S.of(context).floor_number +  "  : $floorNumber " + "   " +
                    S.of(context).apartment_number +" : $apartmentNumber " ,
                  style:Styles.textStyle14),
               const SizedBox(height: 8,),
                Text(S.of(context).distinctive_mark + " : $markDetails" , style: Styles.textStyle14),
               const SizedBox(height: 8,),
                Text(S.of(context).phone_number + ": $phoneNumber" , style:Styles.textStyle14),

              ],
            ),
          ),
        );
      }
    );
  }
}
