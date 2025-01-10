import 'package:hive/hive.dart';

class NotModel extends HiveObject {
  NotModel(
      {required this.title,
      required this.subtitle,
      required this.date,
      required this.color});

  String title;
  String subtitle;
  final String date;
  final int color;
}
