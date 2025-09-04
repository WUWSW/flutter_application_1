import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  // State variable
  // String message = 'Hello';
  int count = 0;
  // methods
  void update() {
    setState(() {
      // message = (message == 'Hello') ? 'Hi' : 'Hello';
      count++;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('counter', style: TextStyle(color: Colors.white)),
        backgroundColor: Colors.blue[500],
      ),
      body: Center(
        child: Text(
          'Count = $count',
          style: TextStyle(fontSize: 25, color: Colors.green[900]),
        ),
      ), // Display the state variable
      floatingActionButton: FloatingActionButton(
        onPressed: update,
        backgroundColor: Colors.blue,
        child: Text('Click', style: TextStyle(color: Colors.white)),
      ),
    );
  }
}