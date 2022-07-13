import 'package:flutter/material.dart';

class TopTrip {
  String country;
  String destination;
  String mainMenuImageUrl;
  String detailImageUrl;
  String rating;
  double price;
  int duration;
  String description;
  String category;
  bool isFavorited;

  TopTrip(
      {required this.country,
      required this.destination,
      required this.mainMenuImageUrl,
      required this.rating,
      required this.description,
      required this.detailImageUrl,
      required this.duration,
      required this.price,
      required this.category,
      required this.isFavorited});
}
