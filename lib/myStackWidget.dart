import "package:flutter/material.dart";

class MyStackWidget extends StatelessWidget {
  const MyStackWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return Stack(
    //   alignment: Alignment.center,
    //   children: [
    //     Container(
    //       width: 100,
    //       height: 100,
    //       color: Colors.blue
    //     ),
    //     const Text("@K@")
    //   ],
    // );

    // return Stack(
    //   alignment: Alignment.bottomRight,
    //   children: [
    //     const CircleAvatar(
    //       radius: 40,
    //       backgroundImage: NetworkImage(
    //         'https://thumb.wikimedia.org/wikipedia/commons/thumb/d/d7/Google_Translate_logo.svg/250px-Google_Translate_logo.svg.png?utm_source=commons.wikimedia.org&utm_campaign=index&utm_content=thumbnail',
    //       ),
    //     ),
    //     DecoratedBox(decoration: BoxDecoration(
    //       color: Colors.green,
    //       shape: BoxShape.circle,
    //       border: Border.all(color: Colors.white, width: 3)
    //     ),
    //     child: SizedBox(width: 20, height:20),)
    //   ],
    // );

    return Stack(
      children: [
        Image.network('https://images.pexels.com/photos/19060954/pexels-photo-19060954/free-photo-of-iphone-15-pro-max.jpeg'),
        Positioned(
          right:0,
          top:0,

          child: Container(
            padding: EdgeInsets.all(8),
            color: Colors.red,
            child: const Text("50% Off", style: TextStyle(
              fontSize: 16,
              fontWeight: FontWeight.bold,
              fontStyle: FontStyle.normal,
              color: Colors.white
            
            ),),
          )
        ),
      ],
    );
  }
}
