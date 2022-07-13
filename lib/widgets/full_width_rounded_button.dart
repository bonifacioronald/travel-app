import 'package:flutter/material.dart';

import '../models/colors.dart' as custom_colors;

class FullWidthRoundedButton extends StatelessWidget {
  String text;
  Color color;
  String onTapRouteName;

  FullWidthRoundedButton(this.text, this.color, this.onTapRouteName);

  @override
  Widget build(BuildContext context) {
    return GestureDetector(
      onTap: () => Navigator.of(context).pushNamed(onTapRouteName),
      child: Container(
        width: double.infinity,
        height: 52,
        decoration: BoxDecoration(
          color: color,
          borderRadius: BorderRadius.circular(24),
        ),
        child: Center(
          child: Text(
            text,
            style: TextStyle(color: Colors.white, fontSize: 16),
          ),
        ),
      ),
    );
  }
}
