import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';

class CustomNotItem extends StatelessWidget {
  const CustomNotItem({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 24, bottom: 24, left: 24, right: 16),
      decoration: _getBoxDecoration(),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.end,
        children: [_getListTile(), _getTextDate()],
      ),
    );
  }

  Padding _getTextDate() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        'th date is 12/12/2024',
        style: TextStyle(
          color: Colors.black.withOpacity(.4),
          fontSize: 16,
        ),
      ),
    );
  }

  ListTile _getListTile() {
    return ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 0),
        title: Text(
          'tiite',
          style: TextStyle(
            fontSize: 26,
            color: Colors.black,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          child: Text(
            'subtiite jdfklgj lkjdflgkj fldgj',
            style: TextStyle(
              fontSize: 18,
              color: Colors.black.withOpacity(.5),
            ),
          ),
        ),
        trailing: IconButton(
          onPressed: () {},
          icon: Icon(
            FontAwesomeIcons.trash,
            color: Colors.black,
            size: 24,
          ),
        ));
  }

  BoxDecoration _getBoxDecoration() => BoxDecoration(
        color: Colors.green,
        borderRadius: BorderRadius.circular(16),
      );
}
