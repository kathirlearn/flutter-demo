import 'package:flutter/material.dart';

class MyContainer extends StatelessWidget {
  const MyContainer({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      // child: Text('Raj Sharma'),
        child: Image.network(
          'https://thumb.wikimedia.org/wikipedia/commons/thumb/d/d7/Google_Translate_logo.svg/250px-Google_Translate_logo.svg.png?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=thumbnail',
        ),
      padding: EdgeInsets.all(20),
      decoration: BoxDecoration(
          gradient: LinearGradient(
            colors: [
              Colors.blue,
              Colors.green,
            ]),
        border: Border.all(
          color: Colors.black,
          width: 2,
        ),
        borderRadius: BorderRadius.all(
          Radius.circular(8)
        ),
        boxShadow: [BoxShadow(
          color: Colors.red,
              blurRadius: 10,
              offset: Offset.fromDirection(-4, -4),
        )
      ]),
    );
  }
}
