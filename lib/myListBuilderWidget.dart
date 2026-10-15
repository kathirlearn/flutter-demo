import 'package:flutter/material.dart';

class Task {
  final String title;
  final String subtitle;

  Task({
    required this.title,
    required this.subtitle,
  });
}

List<Task> tasks = [
  Task(
    title: 'Go to Gym',
    subtitle: 'Go to Gym at 6:00 AM',
  ),
  Task(
    title: 'Go to College',
    subtitle: 'Go to College at 8:00 AM',
  ),
  Task(
    title: 'Go to Office',
    subtitle: 'Go to Office at 11:00 AM',
  )
];

class MyListBuilderWidget extends StatelessWidget {
  const MyListBuilderWidget({super.key});

  @override
  Widget build(BuildContext context) {
    // return ListView.builder(
    //   itemCount: 50,
    //   itemBuilder: (BuildContext context, int index){
    //     return ListTile(
    //       title: Text('item $index'),
    //     );
    //   },
    // );

    // final List<String> tasks = [
    //   'Go to Gym',
    //   'Go to College',
    //   'Go to Office'
    // ];
    // return ListView.builder(
    //   itemCount: tasks.length,
    //   itemBuilder: (BuildContext context, int index){
    //     return ListTile(
    //       title: Text(tasks[index]),
    //     );
    //   },
    // );

    return ListView.builder(
      itemCount: tasks.length,
      itemBuilder: (BuildContext context, int index){
        return ListTile(
          title: Text(tasks[index].title),
          subtitle: Text(tasks[index].subtitle),
        );
      },
    );
  }
}
