

import 'package:demo_test/screens/postScreen.dart';
import 'package:demo_test/screens/storyScreen.dart';
import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({super.key});

  final List<String> posts = ["POST 1","POST 2", "POST 3", "POST 4"];
  final List<dynamic> stories = [{"title":"Story1", "url":"assets/images/img1.jpg"},];

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: const Text('Home'),
      ),
      drawer: Drawer(
        child: Column(
          children: [
            // Expanded allows the ListView to take up all available top space
            Expanded(
              child: ListView(
                children: [
                  DrawerHeader(
                    decoration: const BoxDecoration(
                      color: Colors.blue,
                      image: DecorationImage(
                        image: NetworkImage("https://encrypted-tbn0.gstatic.com/images?q=tbn:ANd9GcTrYP31zgOtc1Wk8krdMEV7cZPMgTC28sC7sTEL5oUuVBfthMXCpE30bh4&s=10"),
                        fit: BoxFit.cover,
                      ),
                    ),
                    child: Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      mainAxisAlignment: MainAxisAlignment.end,
                      children: const [
                        CircleAvatar(
                          radius: 30,
                          backgroundImage: NetworkImage(
                              'https://static.vecteezy.com/system/resources/thumbnails/045/342/266/small/cat-with-3d-vr-glasses-on-the-isolated-background-photo.jpeg'),
                        ),
                        SizedBox(height: 10),
                        Text(
                          'Kathir Ram',
                          style: TextStyle(
                            color: Colors.white,
                            fontSize: 18,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                        Text(
                          'kathir@example.com',
                          style: TextStyle(
                            color: Colors.white70,
                            fontSize: 14,
                          ),
                        ),
                      ],
                    ),
                  ),
                  ListTile(
                    leading: const Icon(Icons.home),
                    title: const Text('Home'),
                    onTap: () => Navigator.pop(context),
                  ),
                  ListTile(
                    leading: const Icon(Icons.person),
                    title: const Text('Profile'),
                    onTap: () {
                      Navigator.pushNamed(context, '/profile');
                    },
                  ),
                  ListTile(
                    leading: const Icon(Icons.settings),
                    title: const Text('Settings'),
                    onTap: () {
                      Navigator.pushNamed(context, '/settings');
                    },
                  ),
                ],
              ),
            ),
            const Divider(),
            ListTile(
              leading: const Icon(Icons.logout, color: Colors.red),
              title: const Text(
                'Logout',
                style: TextStyle(color: Colors.red, fontWeight: FontWeight.bold),
              ),
              onTap: () {
                Navigator.pop(context);
              },
            ),
          ],
        ),
      ),
      body: Column(
          children: [
            Expanded(
              child: ListView.builder(
                  scrollDirection: Axis.horizontal,
                  itemCount: stories.length,
                  itemBuilder: (context, index)
                  {
                    return StoryScreen(
                      storyName: stories[index]["url"],
                    );
                  }),
            ),
            Expanded(
              flex: 4,
              child: ListView.builder(
                  itemCount: posts.length,
                  itemBuilder: (context, index)
                  {
                    return PostScreen(
                      child: posts[index],
                    );
                  }),
            ),
          ],
      ),
    );
  }
}

