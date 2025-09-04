import 'package:flutter/material.dart';

class Basic extends StatelessWidget {
  const Basic({super.key}); // <-- Semicolon added here

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('My first app')),
      body: Text('Hello world'),
      floatingActionButton: FloatingActionButton(
        onPressed: null,
        child: Text('Click'),
      ),
    );
  }
}
