import 'package:flutter/material.dart';
import '../models/image_model.dart';
import './image_list_item.dart';

class ImageList extends StatelessWidget {
  final List<ImageModel> _images;

  ImageList(this._images);

  Widget build(BuildContext build) {
    return ListView.builder(
      itemCount: _images.length,
      itemBuilder: (BuildContext context, int index) {
        return ImageListItem(_images[index]);
      }
    );
  }
}