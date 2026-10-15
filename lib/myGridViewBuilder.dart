import 'package:flutter/material.dart';

class MyGridViewBuilder extends StatelessWidget {
  const MyGridViewBuilder({super.key});

  @override
  Widget build(BuildContext context) {
    // return GridView.builder(
    //     gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 2),
    //     itemCount: 20,
    //     itemBuilder: (BuildContext context, int index){
    //       return GridTile(child: Center(
    //         child: Text('$index'),
    //       ));
    //     }
    // );

    final List<String> imageUrls = [
      'https://picsum.photos/250?image=237',
      'https://picsum.photos/250?image=238',
      'https://picsum.photos/250?image=239',
      'https://picsum.photos/250?image=240',
      'https://picsum.photos/250?image=241',
      'https://picsum.photos/250?image=242',
      'https://picsum.photos/250?image=243',
      'https://picsum.photos/250?image=242',
      'https://picsum.photos/250?image=270',
      'https://picsum.photos/250?image=271',
      'https://picsum.photos/250?image=247',
      'https://picsum.photos/250?image=248',
      'https://picsum.photos/250?image=249',
      'https://picsum.photos/250?image=250',
      'https://picsum.photos/250?image=251',
      'https://picsum.photos/250?image=252',
      'https://picsum.photos/250?image=253',
      'https://picsum.photos/250?image=254',
      'https://picsum.photos/250?image=255',
      'https://picsum.photos/250?image=256',
      'https://picsum.photos/250?image=257',
      'https://picsum.photos/250?image=258',
      'https://picsum.photos/250?image=259',
      'https://picsum.photos/250?image=260',
    ];
    
    return GridView.builder(gridDelegate: SliverGridDelegateWithFixedCrossAxisCount(crossAxisCount: 3),
        itemCount: imageUrls.length,
        itemBuilder: (BuildContext context, int index) {
            return Image.network(imageUrls[index]);
        });
  }
}
