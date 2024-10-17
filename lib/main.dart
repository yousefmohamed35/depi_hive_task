import 'package:depihivetask/features/home/data/cubit/contact_informatio_cubit.dart';
import 'package:depihivetask/features/home/data/models/contact_info_model.dart';
import 'package:depihivetask/features/home/persentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  Hive.registerAdapter(ContactInfoModelAdapter());
  await Hive.openBox<ContactInfoModel>('contact_info');
  runApp(const ContactInformation());
}

class ContactInformation extends StatelessWidget {
  const ContactInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocProvider(
      create: (context) => ContactInformatioCubit(),
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        home: HomeView(),
      ),
    );
  }
}
