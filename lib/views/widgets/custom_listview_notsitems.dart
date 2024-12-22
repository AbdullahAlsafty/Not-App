import 'package:flutter/widgets.dart';

import 'custom_not_itom.dart';

class CustomListViewNotsItems extends StatelessWidget {
  const CustomListViewNotsItems({super.key});

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
      itemCount: 10,
      itemBuilder: (context, index) {
        return Padding(
          padding: const EdgeInsets.all(4.0),
          child: CustomNotItem(),
        );
      },
    );
  }
}
