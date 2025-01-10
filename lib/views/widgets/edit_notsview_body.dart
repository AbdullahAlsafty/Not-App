import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nots_app/cubits/read_cubit/read_not_cubit.dart';
import 'package:nots_app/models/not_model.dart';
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
                widget.notModel.save();
                BlocProvider.of<ReadNotCubit>(context).feachdata();

                Navigator.pop(context);
              },
            ),
            SizedBox(height: 50),
            CustomTextFormFiled(
              onChanged: (value) {
                widget.notModel.title = value;
              },
              autovalidateMode: autovalidateMode,
              hint: widget.notModel.title,
              focusNode: FocusNode(),
            ),
            SizedBox(height: 20),
            CustomTextFormFiled(
              onChanged: (value) {
                widget.notModel.subtitle = value;
              },
              autovalidateMode: autovalidateMode,
              hint: widget.notModel.subtitle,
              maxlins: 5,
              focusNode: FocusNode(),
            ),
          ],
        ),
      ),
    );
  }
}
