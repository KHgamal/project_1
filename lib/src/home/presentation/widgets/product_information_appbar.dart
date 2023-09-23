import 'package:flutter/material.dart';
import 'package:project_1/core/common/widgets/nested_back_button.dart';
import 'package:project_1/core/res/styles.dart';
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
        const NestedBackButton()
      ],

    );
  }
}
