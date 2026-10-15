import 'package:flutter/material.dart';

class MyImageWidget extends StatelessWidget {
  const MyImageWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        const CircleAvatar(
          backgroundImage: AssetImage('assets/images/img1.jpg'),
          radius: 60,
        ),
        const SizedBox(height: 10),
        const Text(
          'Kathir',
          style: TextStyle(
            fontSize: 20,
            fontWeight: FontWeight.bold,
          ),
        ),
        const SizedBox(height: 10),
        const Text(
          'https://kathir-demo.net',
          style: TextStyle(
            fontSize: 16,
            color: Colors.blue,
          ),
        ),
      ],
    );
  }
}
