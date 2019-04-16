class ImageModel {
  int id;
  int albumId;
  String title;
  String url;
  String thumbnailUrl;

  ImageModel(this.id, this.albumId, this.title, this.url, this.thumbnailUrl);

  ImageModel.fromJson(Map<String, dynamic> parsedJson) {
    id = parsedJson['id'];
    albumId = parsedJson['albumId'];
    title = parsedJson['title'];
    url = parsedJson['url'];
    thumbnailUrl = parsedJson['thumbnailUrl'];
  }
}

