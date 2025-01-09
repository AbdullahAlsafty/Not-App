import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nots_app/helper/constants.dart';

class CustomTextFormFiled extends StatelessWidget {
  const CustomTextFormFiled({
    super.key,
    required this.hint,
    required this.focusNode,
    this.maxlins = 1,
    this.onSaved,
    this.autovalidateMode,
    // this.validator,
  });
  final void Function(String?)? onSaved;
  // final String   Function(String?)? validator;
  final String hint;
  final int maxlins;
  final AutovalidateMode? autovalidateMode;

  final FocusNode focusNode;

  @override
  Widget build(BuildContext context) {
    return TextFormField(
      focusNode: focusNode,
      autovalidateMode: autovalidateMode,
      //  autovalidateMode: onSaved==null?AutovalidateMode.disabled:autovalidateMode,
      onSaved: onSaved,
      onTap: () {
        debugPrint('TextField tapped');
        FocusScope.of(context).requestFocus(focusNode);

        if (!focusNode.hasFocus) {
          focusNode.requestFocus();
        }
      },
      validator: (value) {
        if (value?.isEmpty ?? true) {
          return 'this field is required';
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
