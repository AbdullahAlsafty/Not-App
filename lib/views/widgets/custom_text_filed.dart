import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:nots_app/helper/constants.dart';

class CustomTextFiled extends StatelessWidget {
  const CustomTextFiled({super.key, required this.hint, this.maxlins = 1});
  final String hint;
  final int maxlins;

  @override
  Widget build(BuildContext context) {
    return TextField(
      maxLines: maxlins,
      cursorColor: kPrimaryColor,
      decoration: InputDecoration(
          hintText: hint,
          hintStyle: TextStyle(color: kPrimaryColor),
          border: _getOtlininputBorder(Colors.yellow),
          enabledBorder: _getOtlininputBorder(),
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
