import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:modal_progress_hud_nsn/modal_progress_hud_nsn.dart';
import 'package:nots_app/cubits/add_not_cubit/add_not_cubit.dart';
import 'package:nots_app/cubits/add_not_cubit/add_not_state.dart';
import 'package:nots_app/cubits/read_cubit/read_not_cubit.dart';
import 'package:nots_app/views/widgets/add_note_form.dart';

class ShowDialogAddNot extends StatefulWidget {
  const ShowDialogAddNot({super.key});

  @override
  State<ShowDialogAddNot> createState() => _ShowDialogAddNotState();
}

class _ShowDialogAddNotState extends State<ShowDialogAddNot> {
  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => AddNotCubit(),
      child: BlocConsumer<AddNotCubit, AddNotState>(listener: (context, state) {
        if (state is AddNotSuccess) {
          Navigator.pop(context);
          BlocProvider.of<ReadNotCubit>(context).feachdata();
        }
      }, builder: (context, state) {
        return AbsorbPointer(
          absorbing: state is AddNotLoaded ? true : false,
          child: Padding(
            padding: EdgeInsets.only(
                left: 12,
                right: 12,
                bottom: MediaQuery.of(context).viewInsets.bottom + 12),
            child: AddNotForm(),
          ),
        );
      }),
    );
  }
}
