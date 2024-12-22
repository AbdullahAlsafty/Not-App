import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nots_app/views/widgets/custom_text_filed.dart';

import 'custom_appbar_widget.dart';

class EditNotsViewBody extends StatelessWidget {
  const EditNotsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 20),
          CustmAppBArWidget(
            title: 'Edit Nots',
            icon: FontAwesomeIcons.check,
          ),
          SizedBox(height: 50),
          CustomTextFiled(
            hint: 'edit title',
          ),
          SizedBox(height: 20),
          CustomTextFiled(
            hint: 'edit description',
            maxlins: 5,
          ),
        ],
      ),
    );
  }
}
