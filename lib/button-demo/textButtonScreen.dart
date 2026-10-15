import "package:flutter/material.dart";

class TextButtonScreen extends StatelessWidget {
  const TextButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Text Button"),
        foregroundColor: Colors.white,
      ),
         body:Padding(
           padding: const EdgeInsets.all(16.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Center(
                 child: TextButton(onPressed: (){
                   ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(content: Text("It's me Text button"), duration: Duration(seconds: 2), showCloseIcon: true,)
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
                   child: Text("TextButton is a flat, borderless Material Design widget used for low-emphasis or secondary actions. It displays text or content directly on the user interface without any default elevation, background color, or outer borders"),
                 ),
               )
             ],
           ),
         )
    );
  }
}
