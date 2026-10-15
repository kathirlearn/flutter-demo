import 'package:flutter/material.dart';

class CounterApp extends StatefulWidget {
  const CounterApp({super.key});

  @override
  State<CounterApp> createState() => _CounterAppState();
}

class _CounterAppState extends State<CounterApp> {
  int _counter = 0;

  void _incrementCounter(){
    setState(() {
      _counter ++;
    });
  }

  void _decrementCounter(){
    if(_counter > 0){
      setState(() {
        _counter --;
      });
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: const Text("Counter")),
      body: Center(
        child: Column(
            children: [
              Text('$_counter', style: TextStyle(
                fontSize: 48,
                color: Colors.pink
              ),),
              Row(
                mainAxisAlignment: MainAxisAlignment.spaceAround,
                children: [
                  FloatingActionButton(
                      onPressed: _incrementCounter,
                    tooltip: "Add",
                    child: const Icon(Icons.add),

                  ),
                  FloatingActionButton(
                    onPressed: _decrementCounter,
                    tooltip: "Subtract",
                    child: const Icon(Icons.remove),

                  )
                ],
              )
            ],
        ),
      ) ,
    );
  }
}
