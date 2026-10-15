import "package:flutter/material.dart";

class IconButtonScreen extends StatelessWidget {
  const IconButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
     return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Icon Button"),
        foregroundColor: Colors.white,
      ),
         body:Padding(
           padding: const EdgeInsets.all(16.0),
           child: Column(
             mainAxisAlignment: MainAxisAlignment.center,
             children: [
               Center(
                 child: IconButton(onPressed: (){
                   ScaffoldMessenger.of(context).showSnackBar(
                       SnackBar(content: Text("It's me Icon button"), duration: Duration(seconds: 2), showCloseIcon: true,)
                   );
                 }, icon: Icon(Icons.person), color: Colors.purple,iconSize: 60,tooltip: 'User Profile',),
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
                   child: Text("IconButton is a Material Design widget that creates a clickable icon wrapper. It is highly compact and typically used in toolbars, app bars, or anywhere space is limited."),
                 ),
               )
             ],
           ),
         )
    );
  }
}
