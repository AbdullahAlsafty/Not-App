import 'package:flutter/material.dart';

import 'widgets/custom_notsview_body.dart';

class NotsView extends StatelessWidget {
  const NotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return const Scaffold(
      body: CustomNotsViewBody(),
    );
  }
}
