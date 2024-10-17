import 'package:depihivetask/features/home/data/models/contact_info_model.dart';
import 'package:depihivetask/features/home/persentation/views/widgets/edit_contact_information_body..dart';
import 'package:flutter/material.dart';

class EditView extends StatelessWidget {
  const EditView({super.key, required this.contactInfoModel, required this.index});
  final ContactInfoModel contactInfoModel;
  final int index;
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Edit/Add contact'),
        centerTitle: true,
        backgroundColor: Colors.blue,
      ),
      body: EditContactInformationBody(
        contactInfoModel: contactInfoModel, index: index,
      ),
    );
  }
}
