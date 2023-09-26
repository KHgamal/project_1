import 'package:flutter/material.dart';
import 'package:project_1/core/res/styles.dart';
import 'package:project_1/generated/l10n.dart';

import '../../../../core/common/widgets/nested_back_button.dart';
class VerificationAppbar extends StatelessWidget {
  const VerificationAppbar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceBetween,
      children:  [
        Text(S.of(context).document_verification,style: Styles.textStyle24,),
        const NestedBackButton()
      ],
    );
  }
}
