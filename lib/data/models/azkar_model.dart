import 'package:hive_flutter/adapters.dart';

part 'azkar_model.g.dart';
@HiveType(typeId: 0)
class AzkarModel extends HiveObject {
  @HiveField(0)
  final int id;
  @HiveField(1)
  final String title;
  @HiveField(2)
  final int num;

  AzkarModel({
    required this.id,
   required this.title,
   required this.num,
  });
}
