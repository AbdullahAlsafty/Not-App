import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nots_app/cubits/add_not_cubit/add_not_cubit.dart';
import 'package:nots_app/cubits/read_cubit/read_not_cubit.dart';
import 'package:nots_app/helper/constants.dart';
import 'package:nots_app/models/not_model.dart';
import 'package:nots_app/views/widgets/color_item.dart';
import 'package:nots_app/views/widgets/custom_text_form_filed.dart';

import 'custom_appbar_widget.dart';

class EditNotsViewBody extends StatefulWidget {
  const EditNotsViewBody({super.key, required this.notModel});
  final NotModel notModel;
  @override
  State<EditNotsViewBody> createState() => _EditNotsViewBodyState();
}

class _EditNotsViewBodyState extends State<EditNotsViewBody> {
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  String? title, subtitle;
  int? colorcode;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            SizedBox(height: 20),
            CustmAppBArWidget(
              title: 'Edit Nots',
              icon: FontAwesomeIcons.check,
              ontap: () {
                widget.notModel.title = title ?? widget.notModel.title;
                widget.notModel.subtitle = subtitle ?? widget.notModel.subtitle;
                // colorcode = BlocProvider.of<AddNotCubit>(context).colorcode;
                widget.notModel.color = colorcode ?? widget.notModel.color;
                widget.notModel.save();
                BlocProvider.of<ReadNotCubit>(context).feachdata();

                Navigator.pop(context);
              },
            ),
            SizedBox(height: 50),
            CustomTextFormFiled(
              onChanged: (value) {
                title = value;
              },
              autovalidateMode: autovalidateMode,
              hint: widget.notModel.title,
            ),
            SizedBox(height: 20),
            CustomTextFormFiled(
              onChanged: (value) {
                subtitle = value;
              },
              autovalidateMode: autovalidateMode,
              hint: widget.notModel.subtitle,
              maxlins: 5,
            ),
            SizedBox(
                height: 40 * 3,
                child: ColorListViewEditNot(
                  notModel: widget.notModel,
                ))
          ],
        ),
      ),
    );
  }
}

class ColorListViewEditNot extends StatefulWidget {
  const ColorListViewEditNot({super.key, required this.notModel});
  final NotModel notModel;

  @override
  State<ColorListViewEditNot> createState() => _ColorListViewEditNotState();
}

class _ColorListViewEditNotState extends State<ColorListViewEditNot> {
  late int curntIndex;
  @override
  void initState() {
    // TODO: implement initState
    curntIndex = kColorList.indexOf(widget.notModel.color);
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return ListView.builder(
        scrollDirection: Axis.horizontal,
        itemCount: kColorList.length,
        itemBuilder: (context, index) {
          return ColorItem(
              ontap: () {
                curntIndex = index;

                widget.notModel.color = kColorList[index];

                setState(() {});
              },
              color: kColorList[index],
              isActive: curntIndex == index);
        });
  }
}
