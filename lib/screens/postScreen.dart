import 'package:flutter/material.dart';
class PostScreen extends StatelessWidget {
   PostScreen({super.key, required this.child});
  final String child;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: Container(
        height: 400,
        color: Colors.red,
        child: Text(child),
      ),
    );
  }
}
