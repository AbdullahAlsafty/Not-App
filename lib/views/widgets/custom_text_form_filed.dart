import 'package:flutter/material.dart';

import 'package:nots_app/helper/constants.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({
    super.key,
    required this.hint,
    this.maxlins = 1,
    this.onSaved,
    this.autovalidateMode,
    this.onChanged,
  });
  final void Function(String?)? onSaved;

  final String hint;
  final int maxlins;
  final AutovalidateMode? autovalidateMode;
  final void Function(String)? onChanged;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      onChanged: onChanged,
      autovalidateMode: autovalidateMode,
      onSaved: onSaved,
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'this field is required';
        } else {
          return null;
        }
      },
      maxLines: maxlins,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: kPrimaryColor),
          enabledBorder: _getOtlininputBorder(),
          border: _getOtlininputBorder(Colors.yellow),
          focusedBorder: _getOtlininputBorder(kPrimaryColor)),
    );
  }

  OutlineInputBorder _getOtlininputBorder([color]) {
    return OutlineInputBorder(
      borderRadius: BorderRadius.circular(16),
      borderSide: BorderSide(color: color ?? Colors.white),
    );
  }
}
