import 'package:flutter/material.dart';

import '../../../../core/res/colours.dart';
import '../../../../core/res/styles.dart';
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
                Text(" المنطقة : $locationText " , style: Styles.textStyle14) ,
               const SizedBox(height: 8,),
                Text("تفاصيل العنوان :$addressInDetail " , style:Styles.textStyle14),
               const SizedBox(height: 8,),
                Text("رقم المبنى :$buildingNumber     رقم الدور : $floorNumber     رقم الشقة : $apartmentNumber " ,
                  style:Styles.textStyle14),
               const SizedBox(height: 8,),
                Text("علامة مميزة : $markDetails" , style: Styles.textStyle14),
               const SizedBox(height: 8,),
                Text("رقم الهاتف : $phoneNumber" , style:Styles.textStyle14),

              ],
            ),
          ),
        );
      }
    );
  }
}
