import 'package:flutter/material.dart';
import 'package:project_1/core/common/feature/product/domain/entities/product.dart';
import 'package:project_1/src/home/presentation/widgets/product_information_appbar.dart';
import 'package:project_1/src/home/presentation/widgets/sender_receiver_information_container.dart';
import 'package:project_1/src/home/presentation/widgets/shipping_information_container.dart';
import 'package:project_1/src/home/presentation/widgets/default_button.dart';
import 'package:project_1/generated/l10n.dart';

import '../../../../core/res/colours.dart';

class ProductView extends StatelessWidget {
  const ProductView({required this.product,Key? key}) : super(key: key);
  static const route = '/product_details';
  final Product product;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Colors.white,
        body: Column(
          children: [
            Expanded(
              child: ListView(
                scrollDirection: Axis.vertical,
                shrinkWrap: true,
                children: [
                  const Padding(
                    padding: EdgeInsets.only(top: 15, right: 16, left: 16),
                    child: ProductInformationAppbar(),
                  ),
                  SenderReceiverInformationContainer(
                    title: S.of(context).sender_info,
                      locationDetails: product.senderLocationDetails),
                  SenderReceiverInformationContainer(
                      title: S.of(context).receiver_info,
                      locationDetails: product.receiverLocationDetails),
                  ShippingInformationContainer(
                      title: S.of(context).shipping_info,
                      product: product),
                ],
              ),
            ),
            MyButton(title: S.of(context).send_offer,
              onPressed: () {},
              textColor: Colors.white,
              buttonColor: Colours.primaryColour,),
          ],
        ),
    );
  }
}
