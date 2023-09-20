import 'package:flutter/material.dart';
import 'package:project_1/core/res/colours.dart';
import 'package:project_1/generated/l10n.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});
  static const route = '/home';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        flexibleSpace: Container(
          decoration: const BoxDecoration(
            gradient: Colours.appBarGradient
          ),
        ),
        title: Text(S.of(context).title),
      ),
      
    );
  }

}
