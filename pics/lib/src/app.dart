import 'package:flutter/material.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _imagesShown = 0;

  void incrementImagesShown() {
    setState(() {
      _imagesShown += 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lets see some images'),
        ),
        body: Text(
          '$_imagesShown Images',
          textAlign: TextAlign.center,
          ),
        floatingActionButton: FloatingActionButton(
          onPressed: () {
            incrementImagesShown();
          },
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}