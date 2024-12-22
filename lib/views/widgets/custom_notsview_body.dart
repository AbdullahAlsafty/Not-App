import 'package:flutter/material.dart';

import 'custom_appbar_widget.dart';
import 'custom_not_itom.dart';

class CustomNotsViewBody extends StatelessWidget {
  const CustomNotsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return const Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [CustmAppBArWidget(), SizedBox(height: 20), CustomNotItem()],
      ),
    );
  }
}
