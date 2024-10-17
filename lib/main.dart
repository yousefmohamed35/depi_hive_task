import 'package:depihivetask/features/home/persentation/views/home_view.dart';
import 'package:flutter/material.dart';

void main() {
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
