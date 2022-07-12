import 'package:flutter/material.dart';

import '../models/colors.dart' as custom_colors;
import '../models/category.dart';

class CategoryButton extends StatelessWidget {
  Category data;

  CategoryButton(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      height: double.infinity,
      width: 120,
      decoration: BoxDecoration(
          color: data.isSelected ? custom_colors.greenAccent : Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: custom_colors.shadowBlue, blurRadius: 5, spreadRadius: 3)
          ]),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            data.icon,
            color: data.isSelected ? Colors.white : Colors.black87,
          ),
          SizedBox(
            width: 8,
          ),
          Text(
            data.title,
            style: TextStyle(
                color: data.isSelected ? Colors.white : Colors.black87,
                fontSize: 14),
          ),
        ],
      ),
    );
  }
}
