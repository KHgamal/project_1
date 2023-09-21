import 'package:flutter/material.dart';
import 'package:project_1/core/res/colours.dart';
import 'package:project_1/src/home/presentation/widgets/product_information_list.dart';


class ShowProductsGridView extends StatelessWidget {
  const ShowProductsGridView({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final size =MediaQuery.of(context).size;
    return LayoutBuilder(
      builder: (context,constraints){
        return Wrap(
          spacing: constraints.maxWidth*0.04,
          runSpacing: constraints.maxWidth*0.04,
          runAlignment: WrapAlignment.spaceEvenly,
          children: textList.map((e) {
            return Container(
                padding: const EdgeInsets.all(16),
                height: constraints.maxWidth*0.48,
                width: constraints.maxWidth*0.48,
                decoration: BoxDecoration(
                  color: Colours.secondaryColour,
                  borderRadius: BorderRadius.circular(10),
                ),
                child: const ProductsInformationListView()
            );
          }).toList(),

        );
      },
    );
  }
}





