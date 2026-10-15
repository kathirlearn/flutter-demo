import 'package:flutter/material.dart';

class MyButtonWidget extends StatelessWidget {
  const MyButtonWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body:  Column(
        children: [
          Center(
            child: ElevatedButton(
                onPressed: (){

              print("login clicked");
            }, child: Text("Login"),
            style: ElevatedButton.styleFrom(
              backgroundColor: Colors.red,
              foregroundColor: Colors.white,
              shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.horizontal()
              )
            ),),
          ),
          const SizedBox(height: 20),
          OutlinedButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
              SnackBar(content: Text("Outline Clicked"), duration: Duration(seconds: 5),)
            );
          }, child: Text("Outline button"), style: OutlinedButton.styleFrom(
            backgroundColor: Colors.red,
            foregroundColor: Colors.white,
            shape: RoundedRectangleBorder(
            )
          ),),
          const SizedBox(height: 20),
          IconButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Icon Button Clicked"), duration: Duration(seconds: 5),)
            );
          }, icon: Icon(Icons.verified_user), color: Colors.purple,iconSize: 60,tooltip: 'More Info',),
          const SizedBox(height: 20),
          FloatingActionButton(onPressed: (){
            ScaffoldMessenger.of(context).showSnackBar(
                SnackBar(content: Text("Floating Button Clicked"), duration: Duration(seconds: 5),)
            );
          }, child: Icon(Icons.home_max_outlined),backgroundColor: Colors.deepOrangeAccent, )
        ],
      ),
      floatingActionButton: FloatingActionButton(onPressed: (){
        ScaffoldMessenger.of(context).showSnackBar(
            SnackBar(content: Text("Floating Button Clicked"), duration: Duration(seconds: 5),)
        );
      }, child: Icon(Icons.star),backgroundColor: Colors.deepOrangeAccent, ),
    );
  }
}
