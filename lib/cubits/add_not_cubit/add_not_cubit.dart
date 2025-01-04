import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nots_app/cubits/add_not_cubit/add_not_state.dart';
import 'package:nots_app/helper/constants.dart';
import 'package:nots_app/models/not_model.dart';

class AddNotCubit extends Cubit<AddNotState> {
  AddNotCubit() : super(AddNotinitial());
  addNotModel(NotModel not) async {
    emit(AddNotLoaded());
    try {
      Box<NotModel> notBox = Hive.box<NotModel>(knotsBox);
      emit(AddNotSuccess());
      await notBox.add(not);
    } catch (e) {
      emit(AddNotFailure(e.toString()));
    }
  }
}
