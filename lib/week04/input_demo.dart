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
          TextField(controller: tcName,),
          ElevatedButton(onPressed: updateMessage, child: Text('ok')),
          Text(message),
        ],
      ),
    );
  }
}
