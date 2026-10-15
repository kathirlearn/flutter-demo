import 'package:flutter/material.dart';

class MyListWidget extends StatelessWidget {
  const MyListWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return ListView(
    //   children: [
    //     ListTile(
    //       leading: Icon(Icons.person),
    //       title: Text('Go to Gym'),
    //       subtitle: Text('Go to Gym at 6:00 AM'),
    //       trailing: Icon(Icons.delete),
    //     ),
    //     ListTile(
    //       leading: Icon(Icons.person),
    //       title: Text('Go to College'),
    //       subtitle: Text('Go to College at 8:00 AM'),
    //       trailing: Icon(Icons.delete),
    //     ),
    //     ListTile(
    //       leading: Icon(Icons.person),
    //       title: Text('Go to Office'),
    //       subtitle: Text('Go to Office at 11:00 AM'),
    //       trailing: Icon(Icons.delete),
    //     ),
    //   ],
    // );

    // return ListView(
    //   scrollDirection: Axis.horizontal,
    //   children: [
    //     Image.network('https://images.pexels.com/photos/19060954/pexels-photo-19060954/free-photo-of-iphone-15-pro-max.jpeg'),
    //     Image.network('https://images.pexels.com/photos/19060954/pexels-photo-19060954/free-photo-of-iphone-15-pro-max.jpeg'),
    //     Image.network('https://images.pexels.com/photos/19060954/pexels-photo-19060954/free-photo-of-iphone-15-pro-max.jpeg'),
    //     Image.network('https://images.pexels.com/photos/19060954/pexels-photo-19060954/free-photo-of-iphone-15-pro-max.jpeg'),
    //     Image.network('https://images.pexels.com/photos/19060954/pexels-photo-19060954/free-photo-of-iphone-15-pro-max.jpeg'),
    //     Image.network('https://images.pexels.com/photos/19060954/pexels-photo-19060954/free-photo-of-iphone-15-pro-max.jpeg')
    //   ],
    // );

    return ListView(
        reverse: true,
        children: [
            ListTile(
            title: Text('Go to Gym'),
            subtitle: Text('Go to Gym at 6:00 AM'),
            ),
            ListTile(
            title: Text('Go to College'),
            subtitle: Text('Go to College at 8:00 AM'),
            ),
            ListTile(
            title: Text('Go to Office'),
            subtitle: Text('Go to Office at 11:00 AM'),
            ),
    ]
    );
  }
}
