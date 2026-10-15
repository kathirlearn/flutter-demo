import 'package:flutter/material.dart';

class TicTocBoard extends StatelessWidget {
  const TicTocBoard({super.key});

  @override
  Widget build(BuildContext context) {
    return GridView.builder(
        gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: 9,
        itemBuilder: (BuildContext context, int index){
          return Container(
            decoration: BoxDecoration(
              border: Border.all(color: Colors.grey, width: 0.5),
            ),
            child: Center(
              child: Text(
                  index % 2 == 0 ? "X" : "O"
              ),
            ),
          );
        });
  }
}
