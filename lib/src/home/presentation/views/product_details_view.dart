import 'package:flutter/material.dart';

import '../../../../core/res/colours.dart';
import '../../../../core/res/media_res.dart';
import '../../../../generated/l10n.dart';
class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);
  static const route = '/product_details';
  @override
  Widget build(BuildContext context) {
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Padding(
              padding: const EdgeInsets.only(top: 15),
              child: ListTile(
                leading: Image.asset(Media.titleIcon, width: 19.5,height: 22,) ,
                ///////////////////////////////////////////
                title:Align(
                  alignment: Alignment(1.3, 0),
                  child: Text("معلومات المنتج",style: TextStyle(
                    fontWeight: FontWeight.w600, fontSize: 18 , color: Colours.txtMainColor
                  ),),
                ),
                trailing: Padding(
                  padding: const EdgeInsets.all(8.0),
                  child: Container(
                    width: 40,
                    height: 40,
                    decoration: BoxDecoration(
                      color: Colours.secondaryColour,
                      borderRadius: BorderRadius.circular(10.0),
                    ),
                    child: InkWell(
                      onTap: (){},
                      splashColor: Colors.transparent,
                      borderRadius: BorderRadius.circular(24),
                      child:const Icon(
                        Icons.arrow_forward_ios_outlined,
                        color: Colours.txtMainColor,
                        size: 24.0,
                      ),
                    ),
                  ),
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 24, right: 16, left: 16),
              padding:const EdgeInsets.all(16) ,
              width: 343,
              height:181,
              decoration: BoxDecoration(
                color: Colours.secondaryColour,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child:const SingleChildScrollView(
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text("معلومات المرسل " , style: TextStyle(
                        fontSize: 16 , fontWeight: FontWeight.w600 , color: Colours.txtMainColor
                    ),),
                    SizedBox(height: 12,),
                    Text("المنطقة : اسم المنطقة " , style: TextStyle(
                      fontSize: 14 , fontWeight: FontWeight.w400 , color: Colours.txtMainColor
                    ),) ,
                    SizedBox(height: 8,),
                    Text("تفاصيل العنوان : العنوان بالتفصيل" , style: TextStyle(
                        fontSize: 14 , fontWeight: FontWeight.w400 , color: Colours.txtMainColor
                    ),),
                    SizedBox(height: 8,),
                    Text("رقم المبنى : xx     رقم الدور : xx     رقم الشقة : xx " , style: TextStyle(
                        fontSize: 14 , fontWeight: FontWeight.w400 , color: Colours.txtMainColor
                    ),),
                    SizedBox(height: 8,),
                    Text("علامة مميزة : تفاصيل العلامة" , style: TextStyle(
                        fontSize: 14 , fontWeight: FontWeight.w400 , color: Colours.txtMainColor
                    ),),
                    SizedBox(height: 8,),
                    Text("رقم الهاتف : xxx xxxx xxx" , style: TextStyle(
                        fontSize: 14 , fontWeight: FontWeight.w400 , color: Colours.txtMainColor
                    ),),

                  ],
                ),
              ),
            ),
            Container(
              margin: const EdgeInsets.only(top: 24, right: 16, left: 16),
              padding:const EdgeInsets.all(16) ,
              width: 343,
              height:181,
              decoration: BoxDecoration(
                color: Colours.secondaryColour,
                borderRadius: BorderRadius.circular(10.0),
              ),
              child:const SingleChildScrollView(
                child:  Column(
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Text(" معلومات المرسل اليه " , style: TextStyle(
                        fontSize: 16 , fontWeight: FontWeight.w600 , color: Colours.txtMainColor
                    ),),
                    SizedBox(height: 12,),
                    Text("المنطقة : اسم المنطقة " , style: TextStyle(
                        fontSize: 14 , fontWeight: FontWeight.w400 , color: Colours.txtMainColor
                    ),) ,
                    SizedBox(height: 8,),
                    Text("تفاصيل العنوان : العنوان بالتفصيل" , style: TextStyle(
                        fontSize: 14 , fontWeight: FontWeight.w400 , color: Colours.txtMainColor
                    ),),
                    SizedBox(height: 8,),
                    Text("رقم المبنى : xx     رقم الدور : xx     رقم الشقة : xx " , style: TextStyle(
                        fontSize: 14 , fontWeight: FontWeight.w400 , color: Colours.txtMainColor
                    ),),
                    SizedBox(height: 8,),
                    Text("علامة مميزة : تفاصيل العلامة" , style: TextStyle(
                        fontSize: 14 , fontWeight: FontWeight.w400 , color: Colours.txtMainColor
                    ),),
                    SizedBox(height: 8,),
                    Text("رقم الهاتف : xxx xxxx xxx" , style: TextStyle(
                        fontSize: 14 , fontWeight: FontWeight.w400 , color: Colours.txtMainColor
                    ),),

                  ],
                ),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
