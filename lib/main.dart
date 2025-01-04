import 'package:flutter/material.dart';
import 'package:hive_flutter/hive_flutter.dart';
import 'package:nots_app/helper/constants.dart';
import 'package:nots_app/models/not_model_adaptor.dart';

import 'package:nots_app/views/nots_view.dart';

void main() async {
  await Hive.initFlutter();
  if (!Hive.isAdapterRegistered(0)) {
    Hive.registerAdapter(NotModelAdaptor());
  }
  await Hive.openBox<int>(knotsBox);

  runApp(const NotsAppFirst());
}

class NotsAppFirst extends StatelessWidget {
  const NotsAppFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      theme: ThemeData(
        fontFamily: 'Poppins',
        brightness: Brightness.dark,
      ),
      home: const NotsView(),
    );
  }
}
