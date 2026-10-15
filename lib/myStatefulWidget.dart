import 'package:flutter/material.dart';

class MyStatefulWidget extends StatefulWidget {
  const MyStatefulWidget({super.key});

  @override
  State<MyStatefulWidget> createState() => _MyStatefulWidgetState();
}

class _MyStatefulWidgetState extends State<MyStatefulWidget> {
  int counter = 0;
  @override
  Widget build(BuildContext context) {
    return ElevatedButton(onPressed: (){
      setState(() {
        counter++;
      });
    }, child: Text('You have pressed the button $counter times.'));
  }
}
