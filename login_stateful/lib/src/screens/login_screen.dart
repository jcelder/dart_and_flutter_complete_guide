import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  Widget build(BuildContext build) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        child: Column(
          children: <Widget>[
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Email'
              ),
            ),
            TextFormField(
              decoration: const InputDecoration(
                labelText: 'Password'
              ),
            ),
            RaisedButton(
              onPressed: () {},
              child: Text('Submit'),
            ),
          ],
        )
      )
    );
  }
}