import 'package:flutter/material.dart';
import 'package:project_1/core/common/feature/product/domain/entities/location_details.dart';
import '../../../../core/res/colours.dart';
import '../../../../core/res/styles.dart';
import '../../../../generated/l10n.dart';

class SenderReceiverInformationContainer extends StatelessWidget {
  const SenderReceiverInformationContainer({
  required this.locationDetails,
  required this.title
  ,Key? key}) : super(key: key);
  final LocationDetails locationDetails;
  final String title;
  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context , constrain) {
        return Container(
          margin: EdgeInsets.only(top: 24,
              right: constrain.maxWidth*0.05, left:  constrain.maxWidth*0.05),
          padding:const EdgeInsets.all(16) ,
          width: constrain.maxWidth*0.9,
          decoration: BoxDecoration(
            color: Colours.secondaryColour,
            borderRadius: BorderRadius.circular(10.0),
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(title , style:Styles.textStyle16),
             const SizedBox(height: 12,),
              Text("${S.of(context).region} : ${locationDetails.area} " , style: Styles.textStyle14) ,
             const SizedBox(height: 8,),
              Text("${S.of(context).address_details} : ${locationDetails.locationDetails} " , style:Styles.textStyle14),
             const SizedBox(height: 8,),
              RichText(
                  text: TextSpan(
                      style: Styles.textStyle14,
                      text:  "${S.of(context).building_number} : ${locationDetails.buildingNumber}  ",
                      children: [
                        TextSpan(
                            style: Styles.textStyle14,
                            text: "${S.of(context).floor_number}  : ${locationDetails.floorNumber}",
                            children: [
                              TextSpan(
                                  style: Styles.textStyle14,
                                  text: "${S.of(context).apartment_number} : ${locationDetails.apartmentNumber} "
                              )
                            ]
                        )
                      ]
                  ),
              ),
             const SizedBox(height: 8,),
              Text("${S.of(context).distinctive_mark} : ${locationDetails.specialMark}" , style: Styles.textStyle14),
             const SizedBox(height: 8,),
              Text("${S.of(context).phone_number}: ${locationDetails.phone}" , style:Styles.textStyle14),

            ],
          ),
        );
      }
    );
  }
}
