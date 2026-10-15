import "package:flutter/material.dart";

class FloatingActionButtonScreen extends StatelessWidget {
  const FloatingActionButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Floating Action Button"),
        foregroundColor: Colors.white,
      ),
         body:Padding(
           padding: const EdgeInsets.all(16.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [

               Container(
                 decoration: BoxDecoration(
                   color: Colors.grey[200],
                   border: Border.all(color: Colors.blueGrey, width: 0.25),
                   borderRadius: BorderRadius.all(Radius.circular(8.0)),
                 ),
                 child: Padding(
                   padding: const EdgeInsets.all(16.0),
                   child: Text("FloatingActionButton (FAB) is a high-emphasis Material Design widget used to highlight the primary or most common action on a screen. It typically floats in a fixed position over the user interface, usually at one of the bottom corners, and features a distinct circular or rounded rectangular shape with a subtle shadow drop."),
                 ),
               )
             ],
           ),
         ),
       floatingActionButton: FloatingActionButton(onPressed: (){
         ScaffoldMessenger.of(context).showSnackBar(
             SnackBar(content: Text("It's me Floating Action button"), duration: Duration(seconds: 2), showCloseIcon: true,)
         );
     }, child: Icon(Icons.star),backgroundColor: Colors.deepOrangeAccent, ),
    );
  }
}
