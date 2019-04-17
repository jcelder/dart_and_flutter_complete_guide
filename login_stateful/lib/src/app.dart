import 'package:flutter/material.dart';

class App extends StatelessWidget {
  Widget build(BuildContext build) {
    return MaterialApp(
      title: 'Log Me In!',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Log Me In!'),
          centerTitle: true,
        ),
        body: Text('Show a form here!'),
      )
    );
  }
}