import 'package:flutter/material.dart';

class StoryScreen extends StatelessWidget {
   StoryScreen({super.key, required this.storyName});
  final String storyName;
  @override
  Widget build(BuildContext context) {
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: CircleAvatar(
        radius: 40,
        backgroundImage: AssetImage(storyName),
      ),
    );
  }
}
