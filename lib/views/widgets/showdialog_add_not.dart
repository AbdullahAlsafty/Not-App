import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nots_app/views/add_note_form.dart';

class ShowDialogAddNot extends StatelessWidget {
  const ShowDialogAddNot({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 16),
      child: AddNotForm(),
    );
  }
}
