import 'package:depihivetask/features/home/data/cubit/contact_informatio_cubit.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'widgets/add_contact_information_body.dart';

class EditAndAdd extends StatelessWidget {
  const EditAndAdd({
    super.key,
  });
  
  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactInformatioCubit, ContactInformatioState>(
      builder: (context, state) {
        return Scaffold(
          appBar: AppBar(
            title: const Text('Edit/Add contact'),
            centerTitle: true,
            backgroundColor: Colors.blue,
          ),
          body: AddContactInformationBody(),
        );
      },
    );
  }
}



