import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nots_app/cubits/add_not_cubit/add_not_cubit.dart';
import 'package:nots_app/cubits/read_cubit/read_not_cubit.dart';
import 'package:nots_app/helper/constants.dart';
import 'package:nots_app/helper/simple_bloc_observer.dart';
import 'package:nots_app/models/not_model.dart';
import 'package:nots_app/models/not_model_adaptor.dart';

import 'package:nots_app/views/nots_view.dart';

void main() async {
  await Hive.initFlutter();
  Bloc.observer = SimpleBlocObserver();
  if (!Hive.isAdapterRegistered(0)) {
    Hive.registerAdapter(NotModelAdaptor());
  }
  await Hive.openBox<NotModel>(knotsBox);

  runApp(const NotsAppFirst());
}

class NotsAppFirst extends StatelessWidget {
  const NotsAppFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return MultiBlocProvider(
      providers: [
        BlocProvider(
          create: (context) => ReadNotCubit(),
        ),
        BlocProvider(
          create: (context) => AddNotCubit(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        theme: ThemeData(
          fontFamily: 'Poppins',
          brightness: Brightness.dark,
        ),
        home: const NotsView(),
      ),
    );
  }
}
