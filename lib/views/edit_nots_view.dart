import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:nots_app/views/widgets/showdialog_add_not.dart';

import 'widgets/custom_appbar_widget.dart';

class EditNotsView extends StatelessWidget {
  const EditNotsView({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: EditNotsViewBody(),
    );
  }
}

class EditNotsViewBody extends StatelessWidget {
  const EditNotsViewBody({super.key});

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: EdgeInsets.symmetric(horizontal: 24),
      child: Column(
        children: [
          SizedBox(height: 20),
          CustmAppBArWidget(
            title: 'Edit Nots',
            icon: FontAwesomeIcons.check,
          ),
          SizedBox(height: 20),
          ShowDialogAddNot(),
        ],
      ),
    );
  }
}
