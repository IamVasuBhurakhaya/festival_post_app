import 'package:flutter/material.dart';

class AppModels {
  String name, description, image;
  List<String> frame;
  List<String> quotes;
  List<String> english_quotes;

  AppModels(
    this.name,
    this.description,
    this.image,
    this.frame,
    this.quotes,
    this.english_quotes,
  );

  factory AppModels.fromMap({required Map data}) => AppModels(
        data['name'],
        data['description'],
        data['image'],
        data['frame'],
        data['quotes'],
        data['english_quotes'],
      );

  Map<String, dynamic> get toMap => {
        'name': name,
        'description': description,
        'image': image,
        'frame': frame,
        'quotes': quotes,
      };
}
