import 'package:flutter/material.dart';

import '../../../../core/res/colours.dart';
import '../../../../core/res/media_res.dart';
import '../../../../generated/l10n.dart';
import '../widgets/product_information_appbar.dart';
import '../widgets/sender_receiver_information_container.dart';
class ProductView extends StatelessWidget {
  const ProductView({Key? key}) : super(key: key);
  static const route = '/product_details';
  @override
  Widget build(BuildContext context) {
    return  SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: ListView(
          children:const [
            Padding(
              padding: EdgeInsets.only(top: 15 , right: 16 , left: 16),
              child: ProductInformationAppbar(),
            ),
            SenderReceiverInformationContainer(
                title: "معلومات المرسل ", locationText: "اسم المنطقة",
                addressInDetail: "العنوان بالتفصيل", buildingNumber: "xx",
                floorNumber:"xx" , apartmentNumber:"xx",
                markDetails: "تفاصيل العلامة", phoneNumber: "xxx xxxx xxx"),
            SenderReceiverInformationContainer(
                title: "معلومات المرسل اليه ", locationText: "اسم المنطقة",
                addressInDetail: "العنوان بالتفصيل", buildingNumber: "xx",
                floorNumber:"xx" , apartmentNumber:"xx",
                markDetails: "تفاصيل العلامة", phoneNumber: "xxx xxxx xxx"),
          ],
        ),
      ),
    );
  }
}
