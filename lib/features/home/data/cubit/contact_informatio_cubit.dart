import 'package:depihivetask/features/home/data/models/contact_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
part 'contact_informatio_state.dart';

class ContactInformatioCubit extends Cubit<ContactInformatioState> {
  ContactInformatioCubit() : super(ContactInformatioInitial()) {
    fetchContactInfo();
  }
  TextEditingController title = TextEditingController();
  TextEditingController phoneNumber = TextEditingController();
  TextEditingController email = TextEditingController();
  List<ContactInfoModel>? contactInfos;
  var contactInfo = Hive.box<ContactInfoModel>('contact_info');
  void fetchContactInfo() {
    contactInfos = contactInfo.values.toList();
    emit(
      ContactInformatioLoading(),
    );
  }

  void addContactInfo() {
    contactInfo.add(
      ContactInfoModel(
          title: title.text, phoneNumber: phoneNumber.text, email: email.text),
    );
    title.clear();
    phoneNumber.clear();
    email.clear();
    fetchContactInfo();
    emit(ContactInformatioSuccess());
  }

  void updateContactInfo(int index, ContactInfoModel updatedInfo) {
    contactInfo.put(index, updatedInfo);
    fetchContactInfo();
    emit(ContactInformatioSuccess());
  }

  void deleteContactInfo(int index) {
    contactInfo.delete(index);
    emit(ContactInformatioSuccess());
  }
}
