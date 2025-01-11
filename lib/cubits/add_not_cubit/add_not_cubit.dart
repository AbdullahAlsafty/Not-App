import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nots_app/cubits/add_not_cubit/add_not_state.dart';
import 'package:nots_app/helper/constants.dart';
import 'package:nots_app/models/not_model.dart';

class AddNotCubit extends Cubit<AddNotState> {
  AddNotCubit() : super(AddNotinitial());
  int colorcode = 0xFF1E88E5;

  void addNotModel(NotModel not) async {
    emit(AddNotLoaded());
    await Future.delayed(Duration(seconds: 1));

    try {
      Box<NotModel> notBox = Hive.box<NotModel>(knotsBox);

      await notBox.add(not);
      emit(AddNotSuccess());
    } catch (e) {
      emit(AddNotFailure(e.toString()));
    }
  }
}
