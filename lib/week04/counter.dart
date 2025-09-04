import 'package:flutter/material.dart';

class MyWidget extends StatefulWidget {
  const MyWidget({super.key});

  @override
  State<MyWidget> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<MyWidget> {
  // State variable
  String message = 'Hello';

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('counter')),
      body: Center(child: Text(message)), // Display the state variable
      floatingActionButton: FloatingActionButton(
        onPressed: () {
          // setState(() {
          //   message = 'Button clicked!';
          // });

          // debugPrint(message);

          setState(() {
           message = (message == 'Hello') ? 'Hi' : 'Hello';
          });
        },
        child: Text('Click'),
      ),
    );
  }
}