import 'package:hive_flutter/adapters.dart';

part 'azkar_model.g.dart';
@HiveType(typeId: 0)
class AzkarModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final int num;

  AzkarModel({
   required this.title,
   required this.num,
  });
}
