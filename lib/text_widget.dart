import 'package:flutter/material.dart';

class TextWidget extends StatelessWidget {
  const TextWidget({super.key, this.title = "Hello"});

  final String title;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            alignment: Alignment.center,
            child: Text(
              title,
                  style:TextStyle(
                    fontFamily: "Roboto",
                  fontSize: 22
                  )
            ),
          ),
          Container(
            child: RichText(text: TextSpan(
              children: [
                TextSpan(text:"First "),
                TextSpan(text:"Second", style: TextStyle(
                  fontSize: 48
                ))
              ]
            )),
          )
        ],
      )
    );
  }
}

