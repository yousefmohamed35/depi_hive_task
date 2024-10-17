import 'package:depihivetask/features/home/data/models/contact_info_model.dart';
import 'package:flutter/material.dart';

class CustomCart extends StatelessWidget {
  const CustomCart({
    super.key,
    required this.contactInfoModel,
  });
  final ContactInfoModel contactInfoModel;
  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      color: Colors.grey[300],
      elevation: 7,
      // shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: ListTile(
        title: Text(
          contactInfoModel.title,
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text(
            contactInfoModel.title[0],
            style: TextStyle(color: Colors.white),
          ),
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(left: 5),
          child: Text(
            contactInfoModel.phoneNumber,
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
