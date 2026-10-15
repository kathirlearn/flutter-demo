import 'package:flutter/material.dart';

class DummyListPage extends StatelessWidget {
  final String name;
  final String phone;
  final String email;

  const DummyListPage({
    super.key,
    required this.name,
    required this.phone,
    required this.email,
  });

  @override
  Widget build(BuildContext context) {
    return const Placeholder();
  }
}
