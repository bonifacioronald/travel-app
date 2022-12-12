import 'dart:ui';

import 'package:flutter/material.dart';
import 'package:travel_app_green/widgets/full_width_rounded_button.dart';
import 'package:travel_app_green/widgets/gradient_image_stack.dart';
import 'package:travel_app_green/widgets/top_trip_detail_info_box.dart';

import '../models/colors.dart' as custom_colors;
import 'package:travel_app_green/models/top_trip.dart';

class TopTripDetailScreen extends StatefulWidget {
  static const routeName = '/top-trip-detail';

  @override
  State<TopTripDetailScreen> createState() => _TopTripDetailScreenState();
}

class _TopTripDetailScreenState extends State<TopTripDetailScreen> {
  @override
  Widget build(BuildContext context) {
    TopTrip data = ModalRoute.of(context)!.settings.arguments as TopTrip;

    return Scaffold(
      body: Container(
        padding: const EdgeInsets.all(20),
        width: double.infinity,
        height: double.infinity,
        color: custom_colors.backgroundColor,
        clipBehavior: Clip.none,
        child: Column(
          children: [
            Expanded(
              child: SingleChildScrollView(
                child: Column(
                  children: [
                    const SizedBox(
                      height: 40,
                    ),
                    Stack(
                      children: [
                        ClipRRect(
                          borderRadius: BorderRadius.circular(20),
                          child: Container(
                              width: double.infinity,
                              height: 440,
                              child: GradientImageStack(
                                  imageUrl: data.detailImageUrl)),
                        ),
                        Container(
                          width: double.infinity,
                          height: 440,
                          padding: const EdgeInsets.symmetric(
                              horizontal: 10, vertical: 20),
                          child: Column(
                            crossAxisAlignment: CrossAxisAlignment.start,
                            children: [
                              Row(
                                mainAxisAlignment:
                                    MainAxisAlignment.spaceBetween,
                                children: [
                                  GestureDetector(
                                    onTap: () => Navigator.of(context).pop(),
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black45,
                                                spreadRadius: 1,
                                                blurRadius: 3)
                                          ]),
                                      child: const Icon(
                                        Icons.arrow_back_ios_rounded,
                                        color: Colors.black87,
                                        size: 14,
                                      ),
                                    ),
                                  ),
                                  GestureDetector(
                                    onTap: () {
                                      setState(() {
                                        data.isFavorited = !data.isFavorited;
                                      });
                                    },
                                    child: Container(
                                      height: 40,
                                      width: 40,
                                      decoration: const BoxDecoration(
                                          shape: BoxShape.circle,
                                          color: Colors.white,
                                          boxShadow: [
                                            BoxShadow(
                                                color: Colors.black45,
                                                spreadRadius: 1,
                                                blurRadius: 3)
                                          ]),
                                      child: data.isFavorited
                                          ? const Icon(
                                              Icons.favorite,
                                              color: Colors.red,
                                              size: 20,
                                            )
                                          : const Icon(
                                              Icons.favorite_border,
                                              color: Colors.black87,
                                              size: 20,
                                            ),
                                    ),
                                  )
                                ],
                              ),
                              const Spacer(),
                              Padding(
                                padding: const EdgeInsets.symmetric(
                                    horizontal: 20, vertical: 10),
                                child: Column(
                                  crossAxisAlignment: CrossAxisAlignment.start,
                                  children: [
                                    Text('${data.destination},',
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 24)),
                                    Text(data.country,
                                        style: const TextStyle(
                                            fontWeight: FontWeight.bold,
                                            color: Colors.white,
                                            fontSize: 24)),
                                    const SizedBox(
                                      height: 16,
                                    ),
                                    Container(
                                      height: 28,
                                      width: 80,
                                      decoration: BoxDecoration(
                                          color: custom_colors.greenAccent,
                                          borderRadius:
                                              BorderRadius.circular(4)),
                                      child: Center(
                                        child: Text(data.category,
                                            style: const TextStyle(
                                                color: Colors.white,
                                                fontSize: 14)),
                                      ),
                                    )
                                  ],
                                ),
                              ),
                            ],
                          ),
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 20,
                    ),
                    Row(
                      mainAxisAlignment: MainAxisAlignment.spaceAround,
                      children: [
                        TopTripDetailInfoBox(
                          'Price',
                          '\$${data.price.toStringAsFixed(0)}',
                        ),
                        TopTripDetailInfoBox(
                          'Duration',
                          '${data.duration} Days',
                        ),
                        TopTripDetailInfoBox(
                          'Rating',
                          data.rating,
                        ),
                      ],
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                    Padding(
                      padding: const EdgeInsets.symmetric(horizontal: 10),
                      child: Text(
                        data.description,
                        textAlign: TextAlign.justify,
                        style: const TextStyle(
                            color: Colors.black54, fontSize: 14),
                      ),
                    ),
                    const SizedBox(
                      height: 30,
                    ),
                  ],
                ),
              ),
            ),
            Container(
                decoration: const BoxDecoration(boxShadow: [
                  BoxShadow(
                      color: Colors.white,
                      blurRadius: 20,
                      spreadRadius: 0,
                      offset: Offset(0, -20)),
                ]),
                child: FullWidthRoundedButton(
                    'Book Now', custom_colors.greenAccent, ''))
          ],
        ),
      ),
    );
  }
}
