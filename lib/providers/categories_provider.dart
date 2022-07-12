import 'package:flutter/material.dart';
import '../models/category.dart';

class CategoriesProvier with ChangeNotifier {
  final List<Category> categoriesListData = [
    Category('Flights', Icons.flight_outlined, true),
    Category('Hotels', Icons.home_outlined, false),
    Category('Beach', Icons.beach_access_outlined, false),
    Category('Concert', Icons.music_note_outlined, false),
    Category('Eat Out', Icons.dining_outlined, false),
  ];
}
