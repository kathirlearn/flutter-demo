import 'package:flutter/material.dart';

class GesturesWidget extends StatefulWidget {
  const GesturesWidget({super.key});

  @override
  State<GesturesWidget> createState() => _GesturesWidgetState();
}

class _GesturesWidgetState extends State<GesturesWidget> {

  String message = "try gestures here";

  @override
  Widget build(BuildContext context) {
    return Scaffold(
       body: Center(
         child: GestureDetector(
           child: IButton(message: message, height:80, width: 200,clickMe: (){
             ScaffoldMessenger.of(context).showSnackBar(
               SnackBar(content: Text("Im new button"), duration:Duration(seconds: 5),showCloseIcon: true)
             );
           },),
           // onTap: (){
           //   setState(() {
           //     message = "on Tap";
           //   });
           // },
           // onHorizontalDragEnd: (details){
           //   setState(() {
           //     message = "on Drag horizontal";
           //   });
           // },
         ) ,
       ),
    );
  }
}

class IButton extends StatelessWidget {
  const IButton({
    super.key,
    required this.message,
    required this.height,
    required this.width,
    required this.clickMe
  });

  final String message;
  final double height;
  final double width;
  final VoidCallback? clickMe;

  @override
  Widget build(BuildContext context) {
    // return GestureDetector(
    //   child: Container(
    //     height: height,
    //     width: width,
    //     decoration: BoxDecoration(
    //       border: Border.all(color: Colors.red, width: 3),
    //     ),
    //     child: Text("$message"),
    //   ),
    //   onTap: clickMe,
    // );

    return Container( // Required for the splash effect to render correctly
      color: Colors.transparent,
      child: InkWell(
        onTap: () => print('Tapped!'),
        borderRadius: BorderRadius.circular(8),
        splashColor: Colors.blue.withOpacity(0.3),
        child: Padding(
          padding: EdgeInsets.all(12),
          child: Text('Click Me'),
        ),
      ),
    );

  }
}
