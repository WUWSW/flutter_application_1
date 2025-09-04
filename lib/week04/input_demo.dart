import 'package:flutter/material.dart';

class INPUTDEMO extends StatefulWidget {
  const INPUTDEMO({super.key});

  @override
  State<INPUTDEMO> createState() => _MyWidgetState();
}

class _MyWidgetState extends State<INPUTDEMO> {
  String message = '';
  TextEditingController tcName = TextEditingController();

  void updateMessage() {
    setState(() {
      message = tcName.text;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(title: Text('Input Demo')),
      body: Column(
        children: [
          Padding(
            padding: const EdgeInsets.all(8.0),
            child: TextField(
              controller: tcName,
              decoration: InputDecoration(
                border: OutlineInputBorder(),
                labelText: 'Input your name',
                suffixIcon: IconButton(
                  onPressed: tcName.clear,
                  icon: Icon(Icons.clear),
                ),
              ),
            ),
          ),
          SizedBox(height: 10),
          ElevatedButton(onPressed: updateMessage, child: Text('ok')),
          SizedBox(height: 22),
          Text(message),
        ],
      ),
    );
  }
}
