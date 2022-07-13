import 'package:flutter/material.dart';

import '../models/colors.dart' as custom_colors;

class GradientImageStack extends StatelessWidget {
  String imageUrl;

  GradientImageStack({
    required this.imageUrl,
  });

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Container(
          height: double.infinity,
          width: double.infinity,
          child: Image.network(
            imageUrl,
            fit: BoxFit.cover,
          ),
        ),
        Container(
          height: double.infinity,
          decoration: BoxDecoration(
            gradient: LinearGradient(
              begin: FractionalOffset.topCenter,
              end: FractionalOffset.bottomCenter,
              stops: [0.4, 0.7],
              colors: [
                Colors.black.withOpacity(0.0),
                Colors.black54,
              ],
            ),
          ),
        ),
      ],
    );
  }
}
