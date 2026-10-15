import 'package:demo_test/button-demo/mainListPage.dart';
import 'package:flutter/material.dart';

import 'buttonType.dart';

class ElevatedButtonScreen extends StatelessWidget {
  final ButtonTypeData buttonData;
  const ElevatedButtonScreen({super.key,required this.buttonData });

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Elevated Button"),
        foregroundColor: Colors.white,
      ),
      body:Padding(
        padding: const EdgeInsets.all(16.0),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Center(
              child: ElevatedButton(onPressed: (){
                ScaffoldMessenger.of(context).showSnackBar(
                  SnackBar(content: Text("It's me elevated button"), duration: Duration(seconds: 2), showCloseIcon: true,)
                );
              }, child: Text("Sample Button")),
            ),
            SizedBox(height: 40,),
            Container(
              decoration: BoxDecoration(
                color: Colors.grey[200],
                border: Border.all(color: Colors.blueGrey, width: 0.25),
                borderRadius: BorderRadius.all(Radius.circular(8.0)),
              ),
              child: Padding(
                padding: const EdgeInsets.all(16.0),
                child: Text("An ElevatedButton is a Material Design button in Flutter that features a solid background and a slight shadow (elevation) to signify that it can be pressed."),
              ),
            )
          ],
        ),
      )
    );
  }
}
