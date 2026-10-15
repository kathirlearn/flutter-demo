import 'package:flutter/material.dart';

class MyDrawerWidget extends StatelessWidget {
  const MyDrawerWidget({super.key});

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      // drawer: Drawer(),

      // endDrawer: Drawer() ,

      //   drawer: Drawer(
      //     child: ListView(
      //       children: const [
      //         DrawerHeader(
      //           child: Text('Drawer Header'),
      //         ),
      //         ListTile(
      //           leading: Icon(Icons.home),
      //           title: Text('Home'),
      //         ),
      //         ListTile(
      //           leading: Icon(Icons.info),
      //           title: Text('About'),
      //         ),
      //         ListTile(
      //           leading: Icon(Icons.settings),
      //           title: Text('Settings'),
      //         ),
      //       ],
      //     ),
      //   ),

      // drawer: Drawer(
      //   child: ListView(
      //     padding: EdgeInsets.zero,
      //     children: <Widget>[
      //       DrawerHeader(
      //         child: Text('Menu'),
      //         decoration: BoxDecoration(
      //           color: Colors.blue,
      //         ),
      //       ),
      //       ListTile(title: Text('Home'), onTap: () {}),
      //       ListTile(title: Text('Categories'), onTap: () {}),
      //       ListTile(title: Text('Orders'), onTap: () {}),
      //       ListTile(title: Text('Wishlist'), onTap: () {}),
      //       ListTile(title: Text('Settings'), onTap: () {}),
      //     ],
      //   ),
      // ),

      // drawer:Drawer(
      //     child: ListView(
      //       padding: EdgeInsets.zero,
      //       children: <Widget>[
      //         UserAccountsDrawerHeader(
      //           accountName: Text('User Name'),
      //           accountEmail: Text('user@example.com'),
      //           currentAccountPicture: CircleAvatar(
      //             backgroundColor: Colors.orange,
      //             child: Text('U'),
      //           ),
      //         ),
      //         ListTile(title: Text('Profile'), onTap: () {}),
      //         ListTile(title: Text('Friends'), onTap: () {}),
      //         ListTile(title: Text('Messages'), onTap: () {}),
      //         ListTile(title: Text('Settings'), onTap: () {}),
      //       ],
      //     ),
      //   ),

      drawer: Drawer(
        child: ListView(
          children: <Widget>[
            DrawerHeader(
              decoration: BoxDecoration(
                image: DecorationImage(
                  image: NetworkImage('https://flutter-tutorial.net/images/sample_background_image.jpg'),
                  fit: BoxFit.cover,
                ),
              ),
              child: Column(
                mainAxisAlignment: MainAxisAlignment.end,
                children: <Widget>[
                  CircleAvatar(
                    radius: 40,
                    backgroundImage: NetworkImage('https://static.vecteezy.com/system/resources/thumbnails/045/342/266/small/cat-with-3d-vr-glasses-on-the-isolated-background-photo.jpeg'),
                  ),
                  SizedBox(height: 10),
                  Text('Kathir', style: TextStyle(color: Colors.white)),
                  SizedBox(height: 10),
                ],
              ),
            ),
            ListTile(
              leading: Icon(Icons.home),
              title: Text('Home'),
              onTap: () {
                // Handle the tap if needed
              },
            ),
            ListTile(
              leading: Icon(Icons.info),
              title: Text('About'),
              onTap: () {
                // Handle the tap if needed
              },
            ),
          ],
        ),
      ),
      appBar: AppBar(
        title: Text("My Button types"),
      ),
    );
  }
}
