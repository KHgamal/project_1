import 'package:flutter/material.dart';
import 'package:project_1/core/res/media_res.dart';
import 'package:project_1/src/home/presentation/widgets/product_information_tile.dart';

List<String> iconsList=[ Media.locationIcon ,
  Media.destinationIcon,
  Media.titleIcon ,
  Media.typeIcon];
List<String> textList=["المنطقة" ,"المنطقة المرسل إليها"," اسم المنتج ","النوع "];

class ProductsInformationListView extends StatelessWidget {
  const ProductsInformationListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {

    return Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          ProductsInformationListTile(text: textList[0],icon: iconsList[0],index: 0),
          const SizedBox(height: 4,),
          ProductsInformationListTile(text: textList[1],icon: iconsList[1],index: 1),
          const SizedBox(height: 4,),
          ProductsInformationListTile(text: textList[2],icon: iconsList[2],index: 2),
          const SizedBox(height: 4,),
          ProductsInformationListTile(text: textList[3],icon: iconsList[3],index: 3),
        ]);
  }
}