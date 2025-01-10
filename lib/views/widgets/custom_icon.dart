import 'package:flutter/material.dart';

class CustomIcon extends StatelessWidget {
  const CustomIcon({
    super.key,
    required this.icon,
    this.ontap,
  });
  final IconData icon;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 46,
      height: 46,
      decoration: BoxDecoration(
        color: Colors.white.withOpacity(0.05),
        borderRadius: BorderRadius.circular(16),
      ),
      child: Center(
        child: GestureDetector(
          onTap: ontap,
          child: Icon(
            icon,
            size: 22,
          ),
        ),
      ),
    );
  }
}
