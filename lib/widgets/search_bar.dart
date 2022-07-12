import 'package:flutter/material.dart';
import '../models/colors.dart' as custom_colors;

class SearchBar extends StatelessWidget {
  const SearchBar({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
      width: double.infinity,
      height: 40,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: custom_colors.shadowBlue, blurRadius: 5, spreadRadius: 3)
          ]),
      child: Row(
        children: const [
          Expanded(
              flex: 1,
              child: Icon(
                Icons.search,
                color: Colors.black54,
              )),
          Expanded(
              flex: 5,
              child: Text(
                'Your location',
                style: TextStyle(color: Colors.black45),
              ))
        ],
      ),
    );
  }
}
