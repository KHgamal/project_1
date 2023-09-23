import 'package:flutter/material.dart';
import 'package:project_1/core/common/feature/product/domain/entities/product.dart';
import 'package:project_1/core/extensions/context_extension.dart';
import 'package:project_1/core/res/colours.dart';
import 'package:project_1/src/home/presentation/views/product_details_view.dart';
import 'package:project_1/src/home/presentation/widgets/product_information_list.dart';


class ShowProductsGridView extends StatelessWidget {

  final List<Product> products;
  const ShowProductsGridView({
  required this.products
  ,Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final isLandScape=MediaQuery.of(context).orientation==Orientation.landscape;

    return LayoutBuilder(
      builder: (context,constraints){
        return Wrap(
          spacing: constraints.maxWidth*0.04,
          runSpacing: constraints.maxWidth*0.04,
          runAlignment: WrapAlignment.spaceEvenly,
          children: products.map((product) {
            return GestureDetector(
              onTap: (){
                context.pushTab(const ProductView());
              },
              child: Container(
                  padding: const EdgeInsets.all(16),
                  height: isLandScape? constraints.maxWidth*0.28: constraints.maxWidth*0.48,
                  width: constraints.maxWidth*0.48,
                  decoration: BoxDecoration(
                    color: Colours.secondaryColour,
                    borderRadius: BorderRadius.circular(10),
                  ),
                  child: ProductsInformationListView(product: product,)
              ),
            );
          }).toList(),

        );
      },
    );
  }
}





