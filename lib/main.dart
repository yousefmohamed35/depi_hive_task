import 'package:depihivetask/features/home/data/models/contact_info_model.dart';
import 'package:depihivetask/features/home/persentation/views/home_view.dart';
import 'package:flutter/material.dart';
import 'package:hive_flutter/adapters.dart';

void main() async {
  await Hive.initFlutter();
  await Hive.openBox<ContactInfoModel>('contact_info');
  runApp(const ContactInformation());
}

class ContactInformation extends StatelessWidget {
  const ContactInformation({super.key});

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      debugShowCheckedModeBanner: false,
      home: HomeView(),
    );
  }
}
