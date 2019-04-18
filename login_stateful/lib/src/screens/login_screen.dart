import 'package:flutter/material.dart';

class LoginScreen extends StatefulWidget{
  _LoginScreenState createState() => _LoginScreenState();
}

class _LoginScreenState extends State<LoginScreen> {
  final _formKey = GlobalKey<FormState>();
  String email = '';
  String password = '';

  Widget build(BuildContext build) {
    return Container(
      margin: EdgeInsets.all(20.0),
      child: Form(
        key: _formKey,
        child: Column(
          children: <Widget>[
            emailField(),
            passwordField(),
            Container(margin: EdgeInsets.only(top: 25.0)),
            submitButton(),
          ],
        )
      )
    );
  }

  Widget emailField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Email Address',
        hintText: 'you@example.com'
      ),
      keyboardType: TextInputType.emailAddress,
      validator: (String value) {
        bool isValid = value.contains(new RegExp('.+@.+'));
        // return null if valid
        // otherwise string with the error message if invalid
        return isValid ? null : 'Invalid Email Address';
      },
      onSaved: (String value) {
        email = value;
      },
    );
  }

  Widget passwordField() {
    return TextFormField(
      decoration: const InputDecoration(
        labelText: 'Password',
        hintText: 'Password',
      ),
      obscureText: true,
      validator: (String value) {
        bool isValid = value.length >= 8;
        return isValid ? null : 'Invalid Password';
      },
      onSaved: (String value) {
        password = value;
      }
    );
  }

  Widget submitButton() {
    return RaisedButton(
      child: Text('Submit'),
      color: Colors.blue,
      onPressed: () {
        if (_formKey.currentState.validate()) {
          _formKey.currentState.save();
        }
        print('Email: $email, Password: $password');
      },
    );
  }
}