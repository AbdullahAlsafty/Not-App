import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/cubits/add_not_cubit/add_not_cubit.dart';
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
            border: isActive ? Border.all(color: Colors.white, width: 2) : null,
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
  int curntIndex = 0;
  @override
  Widget build(BuildContext context) {
    return SizedBox(
      height: 40 * 3,
      child: ListView.builder(
          scrollDirection: Axis.horizontal,
          itemCount: kColorList.length,
          itemBuilder: (context, index) {
            return ColorItem(
              color: kColorList[index],
              ontap: () {
                curntIndex = index;
                BlocProvider.of<AddNotCubit>(context).colorcode =
                    kColorList[index];
                setState(() {});
              },
              isActive: curntIndex == index,
            );
          }),
    );
  }
}
