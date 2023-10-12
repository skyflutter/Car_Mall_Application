import 'package:flutter/material.dart';

class ModelClass {
  final String id;
  final String title1;
  final String title2;
  final String title3;
  final String price;
  final Color color;

  ModelClass({
    required this.id,
    required this.title1,
    required this.title2,
    required this.title3,    
    required this.price,
    required this.color,
  });
}

class ImageModel {
  final String image;

  ImageModel({
    required this.image
  });
}