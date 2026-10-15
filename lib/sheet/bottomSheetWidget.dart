import 'package:flutter/material.dart';

class BottomSheetWidget extends StatelessWidget {
  const BottomSheetWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      backgroundColor: Colors.grey,
      body: Center(
        // child: ElevatedButton(onPressed: (){
        //   showBottomSheet(
        //       context: context,
        //       builder: (context){
        //         return SizedBox(
        //           height: 250,
        //             child: Center(
        //               child: Column(
        //                 mainAxisAlignment: MainAxisAlignment.center,
        //                 children: [
        //                   Row(
        //                     mainAxisAlignment: MainAxisAlignment.center,
        //                     children: [
        //                       IconButton(onPressed: (){}, icon: Icon(Icons.star_rate)),
        //                       IconButton(onPressed: (){}, icon: Icon(Icons.star_border)),
        //                       IconButton(onPressed: (){}, icon: Icon(Icons.star_border)),
        //                       IconButton(onPressed: (){}, icon: Icon(Icons.star_border)),
        //                       IconButton(onPressed: (){}, icon: Icon(Icons.star_border))
        //                     ],
        //                   ),
        //                   ElevatedButton(onPressed: (){
        //                     Navigator.pop(context);
        //                   }, child: Text("Submit"))
        //                 ],
        //               ),
        //             ),
        //         );
        //       } );
        // }, child: Text("Rate movie")),
        child: ElevatedButton(onPressed: (){
          showDialog(
              context: context,
              builder: (dialogCotext){
                return AlertDialog(
                  title: Text("Logout"),
                  content: Text("Are you sure do you want to logout?"),
                  actions: [
                    Row(
                      spacing: 8,
                      children: [
                        ElevatedButton(onPressed: (){
                            ScaffoldMessenger.of(context).showSnackBar(
                                     SnackBar(content: Text("Cancelled"), duration: Duration(seconds: 2), showCloseIcon: true, )

                              
                            );
                            Navigator.pop(dialogCotext);
                        }, child: Text("Cancel")),

                        ElevatedButton(onPressed: (){

                        }, child: Text("Logout")),
                      ],
                    )
                  ],
                );
              });
        }, child: Text("Logout")),
      ),
    );
  }
}
