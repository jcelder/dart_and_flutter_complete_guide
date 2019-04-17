import 'dart:async';
import 'dart:convert';
import 'package:flutter/material.dart';
import 'package:http/http.dart' show get;
import 'models/image_model.dart';
import 'widgets/image_list.dart';

class App extends StatefulWidget {
  @override
  _AppState createState() => _AppState();
}

class _AppState extends State<App> {
  int _imagesCounter = 0;
  List<ImageModel> _images = [];

  void fetchImage() async {
    _imagesCounter++;
    final response = await get('http://jsonplaceholder.typicode.com/photos/$_imagesCounter');
    final imageModel = ImageModel.fromJson(json.decode(response.body));
    setState(() {
      _images.add(imageModel);
    });
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: Scaffold(
        appBar: AppBar(
          title: Text('Lets see some images'),
        ),
        body: ImageList(_images),
        floatingActionButton: FloatingActionButton(
          onPressed: fetchImage,
          child: Icon(Icons.add),
        ),
      ),
    );
  }
}