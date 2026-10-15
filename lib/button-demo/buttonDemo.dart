import 'package:demo_test/button-demo/mainGridPage.dart';
import 'package:demo_test/button-demo/mainListPage.dart';
import 'package:flutter/material.dart';

class ButtonDemo extends StatelessWidget {
  const ButtonDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Center(
        child: Padding(
          padding: EdgeInsets.all(16.0),
          child: GridView(
            gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(
              crossAxisCount: 2,
              mainAxisSpacing: 24
            ),
            children: [
              GestureDetector(
                child: Card(
                    child: Center(
                  child: Text("Grid view"),
                )
                ),
                onTap: (){
                  Navigator.push(context, MaterialPageRoute(
builder: (context) => MainGridPage()));
                },
              ),
              GestureDetector(
                child: Card(child: Center(
                  child: Text("List view"),
                )),
                onTap: (){
                  Navigator.push(context,
                  MaterialPageRoute(builder: (context) => MainListPage()));
                },
              )
            ],
          )
          ,
        ),
      ),
    );
  }
}
