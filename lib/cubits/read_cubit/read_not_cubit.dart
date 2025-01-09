import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nots_app/cubits/read_cubit/read_not_cubit_state.dart';
import 'package:nots_app/helper/constants.dart';
import 'package:nots_app/models/not_model.dart';

class ReadNotCubit extends Cubit<ReadNotCubitState> {
  ReadNotCubit() : super(ReadNotCubitinitialState());
  List<NotModel>? nots;

  void feachdata() {
    nots = Hive.box<NotModel>(knotsBox).values.toList();
  }
}
