import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:intl/intl.dart';
import 'package:nots_app/cubits/add_not_cubit/add_not_cubit.dart';
import 'package:nots_app/cubits/add_not_cubit/add_not_state.dart';
import 'package:nots_app/cubits/read_cubit/read_not_cubit.dart';
import 'package:nots_app/models/not_model.dart';
import 'package:nots_app/views/widgets/color_item.dart';
import 'package:nots_app/views/widgets/custom_add_buttom.dart';

import 'custom_text_form_filed.dart';

class AddNotForm extends StatefulWidget {
  const AddNotForm({
    super.key,
  });

  @override
  State<AddNotForm> createState() => _AddNotFormState();
}

class _AddNotFormState extends State<AddNotForm> {
  AutovalidateMode autovalidateMode = AutovalidateMode.disabled;
  GlobalKey<FormState> formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    String? title;
    String? subtitle;
    return Form(
      key: formKey,
      child: SingleChildScrollView(
        child: Column(
          children: [
            SizedBox(height: 32),
            CustomTextFormFiled(
              hint: 'title',
              autovalidateMode: autovalidateMode,
              onSaved: (value) {
                title = value;
              },
            ),
            SizedBox(height: 16),
            CustomTextFormFiled(
              hint: 'description',
              maxlins: 5,
              autovalidateMode: autovalidateMode,
              onSaved: (value) {
                subtitle = value;
              },
            ),
            SizedBox(height: 32),
            ColorsListView(),
            SizedBox(height: 32),
            BlocBuilder<AddNotCubit, AddNotState>(
              builder: (context, state) {
                return CustomAddButton(
                  isloading: state is AddNotLoaded ? true : false,
                  title: 'Add Note',
                  ontap: () async {
                    if (formKey.currentState!.validate()) {
                      DateTime dateTimeNow = DateTime.now();
                      var formtedDateTimeNow = DateFormat().format(dateTimeNow);
                      formKey.currentState!.save();
                      NotModel notModel = NotModel(
                          title: title!,
                          subtitle: subtitle!,
                          date: formtedDateTimeNow,
                          color:
                              BlocProvider.of<AddNotCubit>(context).colorcode);
                      BlocProvider.of<AddNotCubit>(context)
                          .addNotModel(notModel);
                    } else {
                      autovalidateMode = AutovalidateMode.always;
                      setState(() {});
                    }
                  },
                );
              },
            ),
          ],
        ),
      ),
    );
  }
}
