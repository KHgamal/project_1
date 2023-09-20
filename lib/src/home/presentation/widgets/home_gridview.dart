import 'package:flutter/material.dart';

import '../../../../core/res/colours.dart';
import '../../../../core/res/media_res.dart';
class ShowProductsGridView extends StatelessWidget {
  const ShowProductsGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
      itemCount: 4,
      gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
          childAspectRatio:0.9,
          crossAxisCount: 2,
          crossAxisSpacing: 16.0,
          mainAxisSpacing: 16.0
      ),
      itemBuilder: (BuildContext context, int index){
        return ShowProductsContainer ();
      },
    );
  }
}

class ShowProductsContainer extends StatelessWidget {
  const ShowProductsContainer({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        padding: const EdgeInsets.all(16) ,
        decoration: BoxDecoration(
          color: Colours.secondaryColour,
          borderRadius: BorderRadius.circular(10),
        ),
        child: ProductsInformationListView()
    );
  }
}

class ProductsInformationListView extends StatelessWidget {
  const ProductsInformationListView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    List<String> iconsList=[ Media.locationIcon ,
      Media.destinationIcon,
      Media.titleIcon ,
      Media.typeIcon];
    List<String> textList=["المنطقة" ,"المنطقة المرسل اليها"," اسم المنتج ","النوع "];
    return ListView.builder(
        itemCount: 4,
        itemBuilder: (BuildContext context, int index) {
          return Padding(
            padding: const EdgeInsets.only(bottom:8),
            child: ProductsInformationListTile(icon: iconsList[index], text: textList[index]),
          );
        });
  }
}

class ProductsInformationListTile extends StatelessWidget {
  const ProductsInformationListTile({Key? key, required this.icon, required this.text}) : super(key: key);
  final String icon;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(icon , width: 20, height:20,),
        const SizedBox(width:8,),
        Flexible(
          child: Text(text, maxLines: 2,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle( fontSize: 14 , color: Colours.txtMainColor),
          ),
        ),
      ],
    );
  }
}