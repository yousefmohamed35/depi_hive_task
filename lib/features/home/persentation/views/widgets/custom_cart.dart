import 'package:flutter/material.dart';

class CustomCart extends StatelessWidget {
  const CustomCart({
    super.key,
  });

  @override
  Widget build(BuildContext context) {
    return Card(
      margin: const EdgeInsets.only(bottom: 16),
      color: Colors.grey[300],
      elevation: 7,
      // shadowColor: Colors.grey,
      shape: RoundedRectangleBorder(
        borderRadius: BorderRadius.circular(16),
      ),
      child: const ListTile(
        title: Text(
          'Title',
          style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold),
        ),
        leading: CircleAvatar(
          backgroundColor: Colors.blue,
          child: Text(
            'A',
            style: TextStyle(color: Colors.white),
          ),
        ),
        subtitle: Padding(
          padding: EdgeInsets.only(left: 5),
          child: Text(
            '01018008166',
            style: TextStyle(color: Colors.grey, fontSize: 14),
          ),
        ),
      ),
    );
  }
}
