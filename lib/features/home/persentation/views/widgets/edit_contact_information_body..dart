import 'package:depihivetask/features/home/data/models/contact_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import '../../../data/cubit/contact_informatio_cubit.dart';
import 'custom_text_form_field.dart';

class EditContactInformationBody extends StatefulWidget {
  const EditContactInformationBody(
      {super.key, required this.contactInfoModel, required this.index});

  final ContactInfoModel contactInfoModel;
  final int index;

  @override
  State<EditContactInformationBody> createState() =>
      _EditContactInformationBodyState();
}

class _EditContactInformationBodyState
    extends State<EditContactInformationBody> {
  late ContactInfoModel editeContactInfoModel;
  @override
  void initState() {
    editeContactInfoModel = widget.contactInfoModel;
    super.initState();
  }

  final formKey = GlobalKey<FormState>();
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Form(
        key: formKey,
        child: Column(
          children: [
            CustomTextForm(
                initialValue: widget.contactInfoModel.title,
                onChange: (value) {
                  editeContactInfoModel =
                      widget.contactInfoModel.copyWith(title: value);
                }),
            const SizedBox(height: 8),
            CustomTextForm(
                initialValue: widget.contactInfoModel.phoneNumber,
                onChange: (value) {
                  editeContactInfoModel =
                      widget.contactInfoModel.copyWith(phoneNumber: value);
                }),
            SizedBox(height: 8),
            CustomTextForm(
                initialValue: widget.contactInfoModel.email,
                onChange: (value) {
                  editeContactInfoModel =
                      widget.contactInfoModel.copyWith(email: value);
                }),
            Spacer(),
            ElevatedButton(
              style: ElevatedButton.styleFrom(
                padding:
                    const EdgeInsets.symmetric(horizontal: 32, vertical: 12),
                backgroundColor: Colors.blue,
                shape: RoundedRectangleBorder(
                  borderRadius: BorderRadius.circular(10),
                ),
              ),
              onPressed: () {
                if (formKey.currentState!.validate()) {
                  context
                      .read<ContactInformatioCubit>()
                      .updateContactInfo(widget.index, editeContactInfoModel);
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
