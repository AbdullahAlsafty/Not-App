import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'custom_add_buttom.dart';
import 'custom_text_filed.dart';

class ShowDialogAddNot extends StatelessWidget {
  const ShowDialogAddNot({super.key});

  @override
  Widget build(BuildContext context) {
    return const SingleChildScrollView(
      child: Padding(
        padding: EdgeInsets.symmetric(horizontal: 16),
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextFiled(hint: 'title'),
            SizedBox(height: 16),
            CustomTextFiled(hint: 'description', maxlins: 5),
            SizedBox(height: 32),
            CustomAddButton(),
            SizedBox(height: 16),
          ],
        ),
      ),
    );
  }
}
