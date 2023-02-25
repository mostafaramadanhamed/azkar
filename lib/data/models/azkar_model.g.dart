// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'azkar_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class AzkarModelAdapter extends TypeAdapter<AzkarModel> {
  @override
  final int typeId = 0;

  @override
  AzkarModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return AzkarModel(
      id: fields[0] as int,
      title: fields[1] as String,
      num: fields[2] as int,
    );
  }

  @override
  void write(BinaryWriter writer, AzkarModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.id)
      ..writeByte(1)
      ..write(obj.title)
      ..writeByte(2)
      ..write(obj.num);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is AzkarModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
