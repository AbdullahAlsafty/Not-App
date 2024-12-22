import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

import 'custom_appbar_widget.dart';
import 'custom_listview_notsitems.dart';

class CustomNotsViewBody extends StatelessWidget {
  const CustomNotsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 20),
          CustmAppBArWidget(
            title: 'Nots App',
            icon: FontAwesomeIcons.magnifyingGlass,
          ),
          SizedBox(height: 20),
          Expanded(child: CustomListViewNotsItems()),
        ],
      ),
    );
  }
}
