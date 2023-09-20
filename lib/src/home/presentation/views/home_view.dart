import 'package:flutter/material.dart';
import 'package:project_1/core/res/colours.dart';
import 'package:project_1/generated/l10n.dart';

import '../../../../core/res/media_res.dart';
import '../widgets/home_gridview.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const route = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: Colours.appBarGradient
          ),
        ),
        title: Text(S.of(context).title),
      ),
      body: Padding(
        padding: const EdgeInsets.all(16),
        child: ShowProductsGridView(),
      ) ,
      
    );
  }

}









