import 'package:flutter/material.dart';
import 'package:project_1/src/home/presentation/widgets/defult_button.dart';
import 'package:project_1/src/home/presentation/widgets/shipping_information_container.dart';

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
    return SafeArea(
      child: Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  Padding(
                    padding: EdgeInsets.only(top: 15, right: 16, left: 16),
                    child: ProductInformationAppbar(),
                  ),
                  SenderReceiverInformationContainer(
                      title: S.of(context).sender_info,
                      locationText: "اسم المنطقة",
                      addressInDetail: "العنوان بالتفصيل",
                      buildingNumber: "xx",
                      floorNumber: "xx",
                      apartmentNumber: "xx",
                      markDetails: "تفاصيل العلامة",
                      phoneNumber: "xxx xxxx xxx"),
                  SenderReceiverInformationContainer(
                      title: S.of(context).receiver_info,
                      locationText: "اسم المنطقة",
                      addressInDetail: "العنوان بالتفصيل",
                      buildingNumber: "xx",
                      floorNumber: "xx",
                      apartmentNumber: "xx",
                      markDetails: "تفاصيل العلامة",
                      phoneNumber: "xxx xxxx xxx"),
                  ShippingInformationContainer(
                      title: S.of(context).shipping_info,
                      shippingDescription: "وصف الشحنه ",
                      shippingType: "نوع الشحنه",
                      weight: "xx",
                      temperature: "xx",
                      humidity: "xx",
                      markDetails: "تفاصيل العلامه "),
                ],
              ),
            ),
            MyButton(title: S.of(context).send_offer, onPressed: () {}),
          ],
        ),
      ),
    );
  }
}
