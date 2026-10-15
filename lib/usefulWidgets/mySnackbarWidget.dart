import 'package:flutter/material.dart';

class MySnackBarWidget extends StatelessWidget {
  const MySnackBarWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ElevatedButton(onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar(
          SnackBar(
            content: Text("hello"), 
            showCloseIcon: true, 
            duration: Duration(seconds: 5),
            action: SnackBarAction(label: "undo", onPressed: (){}),
          )
        );
      }, child: Text("Press Me")),
    );
  }
}
