import 'package:flutter/material.dart';
import 'screens/login_screen.dart';

class App extends StatelessWidget {
  Widget build(BuildContext build) {
    return MaterialApp(
      title: 'Log Me In!',
      home: Scaffold(
        appBar: AppBar(
          title: Text('Log Me In!'),
          centerTitle: true,
        ),
        body: LoginScreen(),
      )
    );
  }
}