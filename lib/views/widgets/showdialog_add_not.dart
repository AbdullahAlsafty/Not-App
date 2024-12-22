import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'custom_text_filed.dart';

class ShowDialogAddNot extends StatelessWidget {
  const ShowDialogAddNot({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        SizedBox(height: 32),
        CustomTextFiled(hint: 'title'),
        SizedBox(height: 16),
        CustomTextFiled(hint: 'description', maxlins: 5),
      ],
    );
  }
}
