import 'package:flutter/material.dart';
import '../models/image_model.dart';

class ImageListItem extends StatelessWidget {
  final ImageModel image;

  ImageListItem(this.image);

  Widget build(BuildContext build) {
    return Container(
      margin: const EdgeInsets.all(20.0),
      padding: const EdgeInsets.all(20.0),
      decoration: BoxDecoration(
        border: Border.all(
          color: Colors.grey,
        )
      ),
      child: Column(
        children: <Widget >[
          Image.network(image.url),
          Padding(
            padding: EdgeInsets.only(top: 8.0),
            child: Text(image.title),
          ),
        ]
      ),
    );
  }
}