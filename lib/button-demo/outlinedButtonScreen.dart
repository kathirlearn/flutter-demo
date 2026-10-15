import 'package:flutter/material.dart';

class OutlinedButtonScreen extends StatelessWidget {
  const OutlinedButtonScreen({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.black87,
        title: Text("Outlined Button"),
        foregroundColor: Colors.white,
      ),
        body:Padding(
          padding: const EdgeInsets.all(16.0),
          child: Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Center(
                child: OutlinedButton(onPressed: (){
                  ScaffoldMessenger.of(context).showSnackBar(
                      SnackBar(content: Text("It's me outlined button"), duration: Duration(seconds: 2), showCloseIcon: true,)
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
                  child: Text("OutlinedButton widget is used to create a Material Design medium-emphasis button that features a clear border outline. It is typically utilized for secondary actions that are important but not the primary focus of the page."),
                ),
              )
            ],
          ),
        )
    );
  }
}
