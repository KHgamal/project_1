import 'package:flutter/material.dart';
import 'package:project_1/core/common/widgets/nested_back_button.dart';
import 'package:project_1/core/res/media_res.dart';

class SignUpHeader extends StatelessWidget {
  const SignUpHeader({
    super.key,
    required this.size,
  });

  final Size size;

  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 130,
      child: Stack(
        children: [
          Container(
            width: double.infinity,
            padding: const EdgeInsets.only(top: 20),
            alignment: Alignment.topLeft,
            child: const NestedBackButton(),
          ),
          Positioned(
            top: 40,
            right: (size.width*0.5-(83/2)-33),
            child: Image.asset(
              Media.logo1,
              alignment: Alignment.bottomCenter,
              height: 87,
              width: 83,
            ),
          ),
        ],
      ),
    );
  }
}