import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_icon.dart';

class CustmAppBArWidget extends StatelessWidget {
  const CustmAppBArWidget(
      {super.key, required this.title, required this.icon, this.ontap});
  final String title;
  final IconData icon;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Row(
      children: [
        Text(
          title,
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        CustomIcon(
          icon: icon,
          ontap: ontap,
        ),
      ],
    );
  }
}
