import 'package:flutter/material.dart';

import '../models/colors.dart' as custom_colors;

class TopTripDetailInfoBox extends StatelessWidget {
  String title;
  String data;

  TopTripDetailInfoBox(this.title, this.data);

  @override
  Widget build(BuildContext context) {
    return Column(
      children: [
        Text(
          title,
          style: TextStyle(
            color: Colors.black54,
            fontWeight: FontWeight.bold,
            fontSize: 14,
          ),
        ),
        SizedBox(
          height: 8,
        ),
        Container(
          height: 80,
          width: 90,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(20),
              color: Colors.white,
              boxShadow: [
                BoxShadow(
                    color: custom_colors.shadowBlue,
                    blurRadius: 5,
                    spreadRadius: 3)
              ]),
          child: Center(
            child: Text(
              data,
              style: TextStyle(
                  color: custom_colors.greenAccent,
                  fontSize: 20,
                  fontWeight: FontWeight.bold),
            ),
          ),
        )
      ],
    );
  }
}
