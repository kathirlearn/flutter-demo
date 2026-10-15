import 'package:flutter/material.dart';

class MyExpandWidget extends StatelessWidget {
  const MyExpandWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Row(
        children: [
          Flexible(
            flex:3,
            child: Container(
              decoration: BoxDecoration(
                color:Colors.red
              ),
            ),
          ),
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                  color:Colors.grey
              ),
            ),
          ),
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                  color:Colors.green
              ),
            ),
          ),
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                  color:Colors.lightBlue
              ),
            ),
          ),
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                  color:Colors.orange
              ),
            ),
          ),
          Flexible(
            child: Container(
              decoration: BoxDecoration(
                  color:Colors.purple
              ),
            ),
          )
        ],
      ),
    );
  }
}
