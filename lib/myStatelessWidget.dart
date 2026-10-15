import 'package:flutter/material.dart';

class MyStatelessWidget extends StatelessWidget {
  final String text;
  const MyStatelessWidget({super.key, required this.text});

  @override
  Widget build(BuildContext context) {
    // return Text(text);
    // return Center(
    //   child: Text(text, style: TextStyle(
    //     fontSize: 22,
    //     color: Colors.amber,
    //     fontWeight: FontWeight.bold,
    //   ),
    //   textAlign: TextAlign.right,),
    // );
    return Text( text , style: TextStyle(
      fontSize: 22,
      color: Colors.amber,
      fontWeight: FontWeight.bold,
      overflow: TextOverflow.ellipsis,
      decoration: TextDecoration.underline,
       backgroundColor: Colors.black87
    ),
      textAlign: TextAlign.right,);
  }
}
