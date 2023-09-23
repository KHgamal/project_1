import 'package:flutter/material.dart';
import 'package:project_1/core/common/feature/product/domain/entities/product.dart';

import '../../../../core/res/colours.dart';
import '../../../../core/res/styles.dart';
import '../../../../generated/l10n.dart';

class ShippingInformationContainer extends StatelessWidget {
  const ShippingInformationContainer({
  required this.product
  ,required this.title,Key? key,}) : super(key: key);
  final String title;
  final Product product;

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
        builder: (context , constrain) {
          return Container(
            margin:  EdgeInsets.only(top: 24,
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
                Text("${S.of(context).shipping_description} : ${product.shipmentDetails} " , style: Styles.textStyle14) ,
                const SizedBox(height: 8,),
                Text("${S.of(context).shipping_type} : ${product.productType} " , style:Styles.textStyle14),
                const SizedBox(height: 8,),
                RichText(
                  text: TextSpan(
                      style: Styles.textStyle14,
                      text:  "${S.of(context).weight} : xx  ",
                      children: [
                        TextSpan(
                            style: Styles.textStyle14,
                            text: "${S.of(context).temperature}  : ${(product.temperature != null)?product.temperature:'xx'}  ",
                            children: [
                              TextSpan(
                                  style: Styles.textStyle14,
                                  text: "${S.of(context).humidity} : ${(product.humidity != null)?product.humidity:'xx'}  "
                              )
                            ]
                        )
                      ]
                  ),
                ),

              ],
            ),
          );
        }
    );
  }
}
