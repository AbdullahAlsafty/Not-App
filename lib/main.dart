import 'package:flutter/material.dart';
import 'package:nots_app/views/nots_view.dart';

void main() {
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
