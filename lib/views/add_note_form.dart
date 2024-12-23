import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_add_buttom.dart';

import 'widgets/custom_text_form_filed.dart';

class AddNotForm extends StatefulWidget {
  const AddNotForm({
    super.key,
  });

  @override
  State<AddNotForm> createState() => _AddNotFormState();
}

class _AddNotFormState extends State<AddNotForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  @override
  Widget build(BuildContext context) {
    GlobalKey<FormState> formKey = GlobalKey<FormState>();

    String? title;
    String? subtitle;
    return Form(
      key: formKey,
      child: Column(
        children: [
          SizedBox(height: 32),
          CustomTextFormFiled(
            hint: 'title',
            autovalidateMode: autovalidateMode,
            onSaved: (value) {
              title = value;
            },
          ),
          SizedBox(height: 16),
          CustomTextFormFiled(
            hint: 'description',
            maxlins: 5,
            autovalidateMode: autovalidateMode,
            onSaved: (value) {
              subtitle = value;
            },
          ),
          SizedBox(height: 32),
          CustomAddButton(
            title: 'Add Note',
            ontap: () {
              if (formKey.currentState!.validate()) {
                formKey.currentState!.save();
              } else {
                autovalidateMode = AutovalidateMode.always;
                setState(() {});
              }
            },
          ),
        ],
      ),
    );
  }
}
