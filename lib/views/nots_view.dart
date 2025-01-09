import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:nots_app/cubits/add_not_cubit/add_not_cubit.dart';
import 'package:nots_app/cubits/read_cubit/read_not_cubit.dart';
import 'package:nots_app/models/not_model.dart';
import 'widgets/custom_notsview_body.dart';
import 'widgets/showdialog_add_not.dart';

class NotsView extends StatelessWidget {
  const NotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              isScrollControlled: true,
              context: context,
              builder: (context) {
                return Container(
                  child: const ShowDialogAddNot(),
                  color: Colors.green,
                );
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const CustomNotsViewBody(),
    );
  }
}
