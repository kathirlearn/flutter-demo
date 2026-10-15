import "package:flutter/material.dart";

class MyGridWidget extends StatelessWidget {
  const MyGridWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return GridView.count(
    //   crossAxisCount: 3,
    //   scrollDirection: Axis.vertical,
    //   children: [
    //     Image.network('https://picsum.photos/200?image=25'),
    //     Image.network('https://picsum.photos/200?image=26'),
    //     Image.network('https://picsum.photos/200?image=27'),
    //     Image.network('https://picsum.photos/200?image=28'),
    //     Image.network('https://picsum.photos/200?image=29'),
    //     Image.network('https://picsum.photos/200?image=30'),
    //   ],
    // );

    return GridView.count(crossAxisCount: 2, children: [
      Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://picsum.photos/200?image=25', height: 150, width: 150),
            const Text('Product 1', textAlign: TextAlign.center),
            const Text('Price: \$100', textAlign: TextAlign.center),
          ],
        ),
      ),
      Card(
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.stretch,
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            Image.network('https://picsum.photos/200?image=25', height: 150, width: 150),
            const Text('Product 1', textAlign: TextAlign.center),
            const Text('Price: \$100', textAlign: TextAlign.center),
          ],
        ),
      )
    ],);
  }
}
