import 'package:flutter/material.dart';

import 'widgets/custom_notsview_body.dart';

class NotsView extends StatelessWidget {
  const NotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          showModalBottomSheet(
              backgroundColor: Colors.red,
              context: context,
              builder: (context) {
                return ShowDialogAddNot();
              });
        },
        child: const Icon(Icons.add),
      ),
      body: const CustomNotsViewBody(),
    );
  }
}

class ShowDialogAddNot extends StatelessWidget {
  const ShowDialogAddNot({super.key});

  @override
  Widget build(BuildContext context) {
    return Container();
  }
}
