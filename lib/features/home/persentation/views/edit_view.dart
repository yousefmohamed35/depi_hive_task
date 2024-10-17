import 'package:depihivetask/features/home/persentation/views/widgets/edit_contact_information_body..dart';
import 'package:flutter/material.dart';

class EditView extends StatelessWidget {
  const EditView({super.key});

  @override
  Widget build(BuildContext context) {
    return  Scaffold(
          appBar: AppBar(
            title: const Text('Edit/Add contact'),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: EditContactInformationBody(),
        );
  }
}