import 'package:flutter/material.dart';
import 'package:nots_app/views/widgets/custom_search_icon.dart';

class CustmAppBArWidget extends StatelessWidget {
  const CustmAppBArWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return const Row(
      children: [
        Text(
          'Nots App',
          style: TextStyle(fontSize: 28),
        ),
        Spacer(),
        CustomSearchIcon()
      ],
    );
  }
}
