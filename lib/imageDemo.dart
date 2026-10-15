import 'package:flutter/material.dart';
class ImageDemo extends StatelessWidget {
  const ImageDemo({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      width: 300,
      height: 200,
      decoration: BoxDecoration(
        color: Colors.lightGreen,
      ),
      child: Image.network('https://static.vecteezy.com/system/resources/thumbnails/045/342/266/small/cat-with-3d-vr-glasses-on-the-isolated-background-photo.jpeg',  colorBlendMode: BlendMode.clear,),
    );
  }
}
