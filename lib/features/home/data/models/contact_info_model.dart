import 'package:hive_flutter/hive_flutter.dart';
part 'contact_info_model.g.dart';
@HiveType(typeId: 0)
class ContactInfoModel extends HiveObject {
  @HiveField(0)
  final String title;
  @HiveField(1)
  final String phoneNumber;
  @HiveField(3)
  final String email;

  ContactInfoModel({required this.title, required this.phoneNumber, required this.email});
}
