import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

import '../../helper/constants.dart';

class CustomAddButton extends StatelessWidget {
  const CustomAddButton(
      {super.key,
      required this.ontap,
      required this.title,
      required this.isloading});
  final void Function() ontap;
  final String title;
  final bool isloading;

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: ontap,
      child: Container(
        width: MediaQuery.of(context).size.width,
        height: 48,
        decoration: BoxDecoration(
          color: kPrimaryColor,
          borderRadius: BorderRadius.circular(8),
        ),
        child: Center(
          child: isloading
              ? CircularProgressIndicator()
              : Text(
                  title,
                  style: TextStyle(color: Colors.black, fontSize: 18),
                ),
        ),
      ),
    );
  }
}
