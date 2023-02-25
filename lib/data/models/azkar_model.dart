import 'package:hive_flutter/adapters.dart';

class AzkarModel extends HiveObject {
  final int id;
  final String title;
  final int num;

  AzkarModel({
    required this.id,
   required this.title,
   required this.num,
  });
}
