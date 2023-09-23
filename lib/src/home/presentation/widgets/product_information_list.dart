import 'package:flutter/material.dart';
import 'package:project_1/core/common/feature/product/domain/entities/product.dart';
import 'package:project_1/core/res/media_res.dart';
import 'package:project_1/src/home/presentation/widgets/product_information_tile.dart';

class ProductsInformationListView extends StatelessWidget {

  final Product product;
  const ProductsInformationListView({
  required this.product
  ,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
        mainAxisAlignment: MainAxisAlignment.spaceAround,
        children: [
          ProductsInformationListTile(text: product.senderLocationDetails.area
              ,icon: Media.locationIcon
              ,index: 0),
          ProductsInformationListTile(text: product.receiverLocationDetails.area,icon:
          Media.destinationIcon,index: 1),
          ProductsInformationListTile(text: product.productType,icon:
          Media.typeIcon,index: 2),
        ]);
  }
}