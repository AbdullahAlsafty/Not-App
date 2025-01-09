import 'package:hive/hive.dart';

class NotModel extends HiveObject {
  NotModel(
      {required this.title,
      required this.subtitle,
      required this.date,
      required this.color});

  final String title;
  final String subtitle;
  final String date;
  final int color;
}
