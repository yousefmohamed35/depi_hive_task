// GENERATED CODE - DO NOT MODIFY BY HAND

part of 'contact_info_model.dart';

// **************************************************************************
// TypeAdapterGenerator
// **************************************************************************

class ContactInfoModelAdapter extends TypeAdapter<ContactInfoModel> {
  @override
  final int typeId = 0;

  @override
  ContactInfoModel read(BinaryReader reader) {
    final numOfFields = reader.readByte();
    final fields = <int, dynamic>{
      for (int i = 0; i < numOfFields; i++) reader.readByte(): reader.read(),
    };
    return ContactInfoModel(
      title: fields[0] as String,
      phoneNumber: fields[1] as String,
      email: fields[3] as String,
    );
  }

  @override
  void write(BinaryWriter writer, ContactInfoModel obj) {
    writer
      ..writeByte(3)
      ..writeByte(0)
      ..write(obj.title)
      ..writeByte(1)
      ..write(obj.phoneNumber)
      ..writeByte(3)
      ..write(obj.email);
  }

  @override
  int get hashCode => typeId.hashCode;

  @override
  bool operator ==(Object other) =>
      identical(this, other) ||
      other is ContactInfoModelAdapter &&
          runtimeType == other.runtimeType &&
          typeId == other.typeId;
}
