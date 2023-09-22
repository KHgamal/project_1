import 'package:flutter/material.dart';
import 'package:project_1/core/common/widgets/app_bar_action.dart';
import 'package:project_1/core/res/styles.dart';

import '../../../../core/res/colours.dart';
import '../../../../core/res/media_res.dart';
import '../../../../generated/l10n.dart';
class ProductInformationAppbar extends StatelessWidget {
  const ProductInformationAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children: [
        Row(
          children: [
            Image.asset(Media.titleIcon, width: 19.5,height: 22,) ,
            const SizedBox(width: 8,),
             Text(
                S.of(context).product_detail_title,
                style:Styles.textStyle18),
          ],
        ),
        AppBarAction(
          child: const Icon(
            Icons.arrow_forward_ios_outlined,
            color: Colours.txtMainColor,
            size: 24.0,
          ), onTap: (){},),
      ],

    );
  }
}
