import 'package:flutter/material.dart';

class PhotoUrl with ChangeNotifier{

  String changeImage= 'https://picsum.photos/seed/picsum/200/300'; // mountain

  String _imageUrl = 'https://picsum.photos/id/237/200/300'; // puppy

  String get imageUrl => _imageUrl;

  void changeImageUrl() async {
    try{
    _imageUrl = changeImage;
    notifyListeners();
    }catch(e){
      print('setImageUrl : $e');
    }
  }

}