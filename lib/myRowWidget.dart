import 'package:flutter/material.dart';

class MyRowWidget extends StatelessWidget {
  const MyRowWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return Container(
    //   color: Colors.green,
    //   height: double.infinity,
    //   child: Row(
    //     mainAxisAlignment: MainAxisAlignment.center,
    //     crossAxisAlignment: CrossAxisAlignment.center,
    //     children: [
    //       Icon(Icons.star, color: Colors.red),
    //       Icon(Icons.star, color: Colors.red),
    //       Icon(Icons.star_border, color: Colors.red),
    //       Icon(Icons.star_border, color: Colors.red),
    //       Icon(Icons.star_border, color: Colors.red),
    //
    //     ],
    //   ),
    // );
    //
    // return Container(
    //   color: Colors.green,
    //   height: double.infinity,
    //   child: SingleChildScrollView(
    //     scrollDirection: Axis.horizontal,
    //     child: Row(
    //       mainAxisAlignment: MainAxisAlignment.center,
    //       crossAxisAlignment: CrossAxisAlignment.center,
    //       children: List.generate(50, (index) => const Icon(Icons.star, color: Colors.red,)),
    //     ),
    //   ),
    // );


    //

    return Container(
      color: Colors.green,
      height: double.infinity,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        crossAxisAlignment: CrossAxisAlignment.center,
        children: List.generate(
            10,
                (index) => const Flexible(
                fit: FlexFit.loose,
                child: Icon(Icons.star,  color: Colors.yellow))),

      ),
    );
  }
}
