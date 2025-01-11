import 'package:flutter/widgets.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'package:nots_app/cubits/read_cubit/read_not_cubit.dart';
import 'package:nots_app/cubits/read_cubit/read_not_cubit_state.dart';

import 'package:nots_app/models/not_model.dart';

import 'custom_not_itom.dart';

class CustomListViewNotsItems extends StatefulWidget {
  const CustomListViewNotsItems({
    super.key,
  });

  @override
  State<CustomListViewNotsItems> createState() =>
      _CustomListViewNotsItemsState();
}

class _CustomListViewNotsItemsState extends State<CustomListViewNotsItems> {
  @override
  void initState() {
    BlocProvider.of<ReadNotCubit>(context).feachdata();
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return BlocConsumer<ReadNotCubit, ReadNotCubitState>(
      listener: (context, state) {
        if (state is ReadNotCubitsuccessState) {}
      },
      builder: (context, state) {
        List<NotModel> nots = BlocProvider.of<ReadNotCubit>(context).nots!;
        return Padding(
          padding: const EdgeInsets.symmetric(vertical: 8),
          child: ListView.builder(
            itemCount: nots.length,
            itemBuilder: (context, index) {
              return Padding(
                padding: const EdgeInsets.all(4.0),
                child: CustomNotItem(
                  not: nots[index],
                ),
              );
            },
          ),
        );
      },
    );
  }
}
