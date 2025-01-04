import 'package:hive/hive.dart';

@HiveType(typeId: 0)
class NotModel extends HiveObject {
  NotModel(
      {required this.title,
      required this.subtitle,
      required this.date,
      required this.color});
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String subtitle;
  @HiveField(2)
  final String date;
  @HiveField(3)
  final int color;
}
