import 'package:flutter/material.dart';
import 'package:nots_app/models/not_model.dart';

import 'widgets/edit_notsview_body.dart';

class EditNotsView extends StatelessWidget {
  const EditNotsView({super.key, required this.notModel});
  final NotModel notModel;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotsViewBody(notModel: notModel),
    );
  }
}
