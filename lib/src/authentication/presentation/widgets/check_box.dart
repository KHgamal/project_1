import 'package:flutter/material.dart';
import '../../../../generated/l10n.dart';

class TermsAndConditionsCheckbox extends StatefulWidget {
  final bool isChecked;
  final ValueChanged<bool> onChanged;

  const TermsAndConditionsCheckbox({super.key,
    required this.isChecked,
    required this.onChanged,
  });

  @override
  TermsAndConditionsCheckboxState createState() =>
      TermsAndConditionsCheckboxState();
}

class TermsAndConditionsCheckboxState extends State<TermsAndConditionsCheckbox> {
  bool _isChecked = false;

  @override
  void initState() {
    super.initState();
    _isChecked = widget.isChecked;
  }

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Checkbox(
          value: _isChecked,
          onChanged: (value) {
            setState(() {
              _isChecked = value ?? false;
              widget.onChanged(_isChecked);
            });
          },
        ),
        Text(S.of(context).agree_terms),
      ],
    );
  }
}