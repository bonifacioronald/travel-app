import 'package:flutter/material.dart';

import '../models/colors.dart' as custom_colors;
import '../models/top_trip.dart';

class TopTripCard extends StatelessWidget {
  TopTrip data;

  TopTripCard(this.data);

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(8),
      height: double.infinity,
      width: 200,
      decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(20),
          boxShadow: [
            BoxShadow(
                color: custom_colors.shadowBlue, blurRadius: 5, spreadRadius: 3)
          ]),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: [
          ClipRRect(
            borderRadius: BorderRadius.circular(12),
            child: Container(
              width: double.infinity,
              height: 100,
              child: Image.network(
                data.mainMenuImageUrl,
                fit: BoxFit.cover,
              ),
            ),
          ),
          Spacer(),
          Text(
            data.country,
            style: TextStyle(
                fontWeight: FontWeight.bold,
                color: Colors.black87,
                fontSize: 20),
          ),
          Row(
            children: [
              Icon(
                Icons.pin_drop,
                color: Colors.black54,
                size: 20,
              ),
              SizedBox(
                width: 8,
              ),
              Text(
                data.destination,
                style: TextStyle(color: Colors.black45, fontSize: 14),
              ),
              Spacer(),
              Icon(
                Icons.star,
                color: custom_colors.greenAccent,
                size: 20,
              ),
              Text(
                data.rating,
                style: TextStyle(color: Colors.black87, fontSize: 14),
              ),
            ],
          )
        ],
      ),
    );
  }
}
