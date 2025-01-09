import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nots_app/views/widgets/custom_text_form_filed.dart';

import 'custom_appbar_widget.dart';

class EditNotsViewBody extends StatefulWidget {
  const EditNotsViewBody({super.key});

  @override
  State<EditNotsViewBody> createState() => _EditNotsViewBodyState();
}

class _EditNotsViewBodyState extends State<EditNotsViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            SizedBox(height: 20),
            CustmAppBArWidget(
              title: 'Edit Nots',
              icon: FontAwesomeIcons.check,
            ),
            SizedBox(height: 50),
            CustomTextFormFiled(
              autovalidateMode: autovalidateMode,
              hint: 'edit title',
              focusNode: FocusNode(),
            ),
            SizedBox(height: 20),
            CustomTextFormFiled(
              autovalidateMode: autovalidateMode,
              hint: 'edit description',
              maxlins: 5,
              focusNode: FocusNode(),
            ),
          ],
        ),
      ),
    );
  }
}
