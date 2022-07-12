import 'package:flutter/material.dart';
import '../models/top_trip.dart';

class TopTripsProvider with ChangeNotifier {
  final List<TopTrip> topTripsListData = [
    TopTrip(
        'Thailand',
        'Railay Beach',
        'https://media-cdn.tripadvisor.com/media/photo-s/0d/05/34/17/railay-beach.jpg',
        '4.7'),
    TopTrip(
        'Malaysia',
        'Genting Resort',
        'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit19201280gsm/events/2021/02/18/e3300a0a-04c9-4d3b-9a18-94eecfb32818-1613616832270-e748377993909ecde3a77ec58321ce14.jpg',
        '4.6'),
    TopTrip(
        'Indonesia',
        'Nusa Penida',
        'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/f5/3e/e5/nusa-penida-island.jpg?w=1200&h=-1&s=1',
        '4.8'),
  ];
}
