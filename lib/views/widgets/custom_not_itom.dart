import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nots_app/cubits/read_cubit/read_not_cubit.dart';
import 'package:nots_app/models/not_model.dart';
import 'package:nots_app/views/edit_nots_view.dart';

class CustomNotItem extends StatelessWidget {
  const CustomNotItem({super.key, required this.not});
  final NotModel not;

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: () {
        Navigator.push(
          context,
          MaterialPageRoute(
            builder: (context) => EditNotsView(notModel: not),
          ),
        );
      },
      child: Container(
        padding:
            const EdgeInsets.only(top: 24, bottom: 24, left: 24, right: 16),
        decoration: _getBoxDecoration(),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [_getListTile(context), _getTextDate()],
        ),
      ),
    );
  }

  Padding _getTextDate() {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Text(
        not.date,
        style: TextStyle(
          color: Colors.black.withOpacity(.4),
          fontSize: 16,
        ),
      ),
    );
  }

  ListTile _getListTile(BuildContext context) {
    return ListTile(
        contentPadding: const EdgeInsets.symmetric(horizontal: 0),
        title: Text(
          not.title,
          style: TextStyle(
            fontSize: 26,
            color: Colors.black,
          ),
        ),
        subtitle: Padding(
          padding: const EdgeInsets.only(top: 16, bottom: 16),
          child: Text(
            not.subtitle,
            style: TextStyle(
              fontSize: 18,
              color: Colors.black.withOpacity(.5),
            ),
          ),
        ),
        trailing: InkWell(
          onTap: () {
            not.delete();
            BlocProvider.of<ReadNotCubit>(context).feachdata();
          },
          child: AnimatedContainer(
            duration: Duration(milliseconds: 900),
            child: Icon(
              FontAwesomeIcons.trash,
              color: Colors.black,
              size: 24,
            ),
          ),
        ));
  }

  BoxDecoration _getBoxDecoration() => BoxDecoration(
        color: Color(not.color),
        borderRadius: BorderRadius.circular(16),
      );
}
