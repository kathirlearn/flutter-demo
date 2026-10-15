import 'package:flutter/material.dart';

class MyColumnWidget extends StatelessWidget {
  const MyColumnWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Container(height: 100, width: 100, color: Colors.blue),
        const SizedBox(height: 5),
        Container(height: 100, width: 100, color: Colors.blue),
        const SizedBox(height: 5),
        Container(height: 100, width: 100, color: Colors.blue),
        const SizedBox(height: 5),
        Container(height: 100, width: 100, color: Colors.blue),
      ],
    );
  }
}
