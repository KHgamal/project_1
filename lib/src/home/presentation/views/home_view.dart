import 'package:flutter/material.dart';
import 'package:project_1/core/common/widgets/app_bar.dart';
import 'package:project_1/core/res/colours.dart';
import 'package:project_1/generated/l10n.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const route = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: const AppBarWidget(),
      body: Padding(
        padding: const EdgeInsets.only(left:16.0,right:16.0,top: 30),
        child: Row(
          mainAxisAlignment: MainAxisAlignment.spaceBetween,
          children: [
            Text(
                S.of(context).product_title,
              style: const TextStyle(
                color: Colours.txtMainColor,
                fontSize: 18.0,
                fontWeight: FontWeight.w600

              ),
            ),
            IconButton(
              padding: EdgeInsets.zero,
                onPressed: (){},
                icon:const Icon(
                    Icons.filter_list,
                ),
            ),
          ],
        ),
      ),
      
    );
  }

}

