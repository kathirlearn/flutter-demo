import 'package:demo_test/text_widget.dart';
import 'package:flutter/material.dart';

class AvatarWidget extends StatelessWidget {
  const AvatarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(

      body: Column(
        children: [
          Center(
            child: Container(
              width: 200,
              height: 200,
              alignment: Alignment.center,

              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(2)),
                color: Colors.green,
                border: Border.all(color: Colors.black, width: 2)
              ),
              child: Icon(Icons.lock_clock)
            ),
          ),
          Center(
            child: TextWidget(),
          )
        ],
      ),
    );
  }
}
