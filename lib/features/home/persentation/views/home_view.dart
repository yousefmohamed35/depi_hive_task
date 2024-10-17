import 'package:depihivetask/features/home/data/cubit/contact_informatio_cubit.dart';
import 'package:depihivetask/features/home/data/models/contact_info_model.dart';
import 'package:flutter/material.dart';
import 'package:flutter_bloc/flutter_bloc.dart';

import 'edit_and_add.dart';
import 'widgets/custom_cart.dart';

class HomeView extends StatelessWidget {
  const HomeView({super.key});

  @override
  Widget build(BuildContext context) {
    return BlocBuilder<ContactInformatioCubit, ContactInformatioState>(
      builder: (context, state) {
        List<ContactInfoModel> contactInfo =
            context.read<ContactInformatioCubit>().contactInfos ?? [];

        return Scaffold(
          appBar: AppBar(
            backgroundColor: Colors.blue,
            title: const Text(
              'Contact',
              style: TextStyle(fontSize: 24, fontWeight: FontWeight.bold),
            ),
            centerTitle: true,
            actions: [
              IconButton(
                  icon: const Icon(
                    Icons.search,
                    color: Colors.white,
                  ),
                  onPressed: () {}),
            ],
          ),
          body: Padding(
            padding: const EdgeInsets.all(16.0),
            child: ListView.builder(
                itemCount: contactInfo.length, // Replace with actual data count
                itemBuilder: (context, index) {
                  return CustomCart(
                    contactInfoModel: contactInfo[index],
                  );
                }),
          ),
          floatingActionButton: FloatingActionButton(
            onPressed: () {
              Navigator.push(
                context,
                MaterialPageRoute(builder: (context) {
                  return const EditAndAdd();
                }),
              );
            },
            backgroundColor: Colors.blue,
            child: const Icon(
              Icons.add,
              color: Colors.white,
            ), // Remove shadow for better performance
          ),
        );
      },
    );
  }
}
