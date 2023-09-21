import 'package:flutter/material.dart';
import 'package:project_1/core/res/colours.dart';

class ProductsInformationListTile extends StatelessWidget {
  const ProductsInformationListTile({Key? key,required this.index
    , required this.icon, required this.text}) : super(key: key);
  final String icon;
  final int index;
  final String text;
  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Image.asset(icon , width: 20, height:20,),
        const SizedBox(width:8,),
        Flexible(
          child: Text(text, maxLines: (index == 1)? 2:1,
            overflow: TextOverflow.ellipsis,
            style: const TextStyle( fontSize: 14 , color: Colours.txtMainColor,
            fontWeight: FontWeight.w400
            ),
          ),
        ),
      ],
    );
  }
}