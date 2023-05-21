import 'package:flutter/material.dart';

class Data {
  final String name;
  final String imageUrl;
  final String description;

  // final String icon;
  Data({
    required this.name,
    // required this.icon,
    required this.imageUrl,
    required this.description,
  });
}

class Documentation {
  final String name1;
  final String time;
  final String icon;
  Documentation({
    required this.icon,
    required this.name1,
    required this.time,
  });
}
