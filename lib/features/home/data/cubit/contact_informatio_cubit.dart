import 'package:depihivetask/features/home/data/models/contact_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';
part 'contact_informatio_state.dart';

class ContactInformatioCubit extends Cubit<ContactInformatioState> {
  ContactInformatioCubit() : super(ContactInformatioInitial());
  TextEditingController title = TextEditingController();
   TextEditingController phoneNumber = TextEditingController();
    TextEditingController email = TextEditingController();
 
 void fetchContactInfo(){
  var contactInfo = Hive.box<ContactInfoModel>('')
 }

}
