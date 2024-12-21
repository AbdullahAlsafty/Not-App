import 'package:flutter/material.dart';
import 'package:nots_app/views/nots_view.dart';

void main() {
  print('inside main ===============================');
  runApp(const NotsAppFirst());
}

class NotsAppFirst extends StatelessWidget {
  const NotsAppFirst({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        brightness: Brightness.dark,
      ),
      home: const NotsView(),
    );
  }
}
