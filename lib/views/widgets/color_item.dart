import 'package:flutter/material.dart';
import 'package:nots_app/helper/constants.dart';

class ColorItem extends StatelessWidget {
  const ColorItem(
      {super.key, required this.color, required this.isActive, this.ontap});
  final int color;
  final bool isActive;
  final void Function()? ontap;

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.symmetric(horizontal: 8),
      child: InkWell(
        onTap: ontap,
        child: AnimatedContainer(
          height: 80,
          width: 80,
          decoration: BoxDecoration(
            color: Color(color),
            shape: BoxShape.circle,
            border: isActive ? Border.all(color: Colors.white) : null,
          ),
          duration: Duration(milliseconds: 500),
          child: isActive
              ? Center(
                  child: Icon(Icons.check),
                )
              : null,
        ),
      ),
    );
  }
}

class ColorsListView extends StatefulWidget {
  const ColorsListView({super.key});

  @override
  State<ColorsListView> createState() => _ColorsListViewState();
}

class _ColorsListViewState extends State<ColorsListView> {
  //int indexff = kColorList[0];
  int indexff = 0xFF1E88E5;
  @override
  Widget build(BuildContext context) {
    print('**********&&&^^&^&^^*^*^&*^&*^&');

    return SizedBox(
      height: 40 * 3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColorList.length,
          itemBuilder: (context, index) {
            print('=========================== ${indexff == index}');
            return ColorItem(
              color: kColorList[index],
              ontap: () {
                indexff = kColorList[index];
                setState(() {});
              },
              isActive: indexff == kColorList[index],
            );
          }),
    );
  }
}
