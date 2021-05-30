import 'package:flutter/material.dart';

class IAmPoor extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return (MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('I am Poor'),
          backgroundColor: Colors.deepPurpleAccent,
        ),
        body: Center(
          child: Image(
            image: AssetImage('images/dollars.jpeg'),
          ),
        ),
      ),
    )
    );
  }
}




