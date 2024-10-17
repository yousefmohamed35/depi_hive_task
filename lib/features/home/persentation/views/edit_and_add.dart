import 'package:depihivetask/features/home/data/cubit/contact_informatio_cubit.dart';
import 'package:depihivetask/features/home/data/models/contact_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class EditAndAdd extends StatelessWidget {
  const EditAndAdd({
    super.key,
  });
  static final formKey = GlobalKey<FormState>();
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
          body: Padding(
            padding: const EdgeInsets.all(8.0),
            child: Form(
              key: formKey,
              child: Column(
                children: [
                  CustomTextForm(
                    labelText: 'Name',
                  ),
                  const SizedBox(height: 8),
                  CustomTextForm(
                    labelText: 'Phone number',
                  ),
                  SizedBox(height: 8),
                  CustomTextForm(
                    labelText: 'Email',
                  ),
                  Spacer(),
                  ElevatedButton(
                    style: ElevatedButton.styleFrom(
                      padding: const EdgeInsets.symmetric(
                          horizontal: 32, vertical: 12),
                      backgroundColor: Colors.blue,
                      shape: RoundedRectangleBorder(
                        borderRadius: BorderRadius.circular(10),
                      ),
                    ),
                    onPressed: () {},
                    child: const Text(
                      'Save Contact',
                      style: TextStyle(color: Colors.white),
                    ),
                  )
                ],
              ),
            ),
          ),
        );
      },
    );
  }
}

class CustomTextForm extends StatelessWidget {
  const CustomTextForm({
    super.key,
    required this.labelText,
  });
  final String labelText;
  @override
  Widget build(BuildContext context) {
    return TextFormField(
      decoration: InputDecoration(
        labelText: labelText,
        enabledBorder: border,
        focusedBorder: const OutlineInputBorder(
          borderSide: BorderSide(
            color: Colors.blue,
            width: 2,
          ),
        ),
        border: border,
      ),
      validator: (value) {
        if (value == null || value.isEmpty) {
          return 'Please enter your task';
        } else {
          return null;
        }
      },
      autovalidateMode: AutovalidateMode.onUserInteraction,
    );
  }
}

final border = OutlineInputBorder(
    borderRadius: BorderRadius.circular(12.0),
    borderSide:
        const BorderSide(color: Colors.grey, width: 1) // Rounded corners
    );
