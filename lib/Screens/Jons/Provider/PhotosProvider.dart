
import 'dart:convert';
import 'package:flutter/cupertino.dart';
import 'package:flutter/services.dart';
import '../Modal/PhotosModal.dart';

class PhotosProvider extends ChangeNotifier {
  List<PhotosModal> photoList = [];

  PhotosProvider() {
    fromList();
  }

  Future<List> jsonParsing() async {
    // print('Loading JSON...');
    String jsonString = await rootBundle.loadString('assets/json/photos.json');
    List photos = jsonDecode(jsonString);
    // print('JSON loaded: $photos');
    return photos;
  }

  Future<void> fromList() async {
    // print('Parsing JSON...');
    List jsonPhotoList = await jsonParsing();
    photoList = jsonPhotoList.map((e) => PhotosModal.fromMap(e)).toList();
    notifyListeners();
    // print('Photos loaded: $photoList');
  }
}
