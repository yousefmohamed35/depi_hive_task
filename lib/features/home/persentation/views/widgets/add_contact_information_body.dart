import 'package:depihivetask/features/home/data/cubit/contact_informatio_cubit.dart';
import 'package:depihivetask/features/home/data/function/validation.dart';
import 'package:depihivetask/features/home/persentation/views/widgets/custom_text_form_field.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

class AddContactInformationBody extends StatelessWidget {
  const AddContactInformationBody({
    super.key,
  });

static final formKey = GlobalKey<FormState>();

  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            CustomTextForm(
              validator: (value) {
                if (value == null || value.isEmpty) {
                  return 'Please enter your task';
                } else {
                  return null;
                }
              },
              labelText: 'Name',
              controller: context.read<ContactInformatioCubit>().title,
            ),
            const SizedBox(height: 8),
            CustomTextForm(
              validator: (phoneNumber) =>
                  validatePhoneNumber(phoneNumber),
              controller:
                  context.read<ContactInformatioCubit>().phoneNumber,
              labelText: 'Phone number',
            ),
            SizedBox(height: 8),
            CustomTextForm(
              validator: (email) => validateEmail(email),
              labelText: 'Email',
              controller: context.read<ContactInformatioCubit>().email,
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
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  context.read<ContactInformatioCubit>().addContactInfo();
                  Navigator.pop(context);
                }
              },
              child: const Text(
                'Save Contact',
                style: TextStyle(color: Colors.white),
              ),
            )
          ],
        ),
      ),
    );
  }
}