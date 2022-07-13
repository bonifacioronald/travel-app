import 'package:flutter/material.dart';
import '../models/top_trip.dart';

class TopTripsProvider with ChangeNotifier {
  final List<TopTrip> topTripsListData = [
    TopTrip(
      country: 'Thailand',
      destination: 'Railay Beach',
      mainMenuImageUrl:
          'https://media-cdn.tripadvisor.com/media/photo-s/0d/05/34/17/railay-beach.jpg',
      rating: '4.7',
      description:
          'Railay is an incredible Thai beach paradise, cut-off from the mainland by soaring cliffs. Railay boasts pristine beaches, a jungled-laden mountain coastline, and laidback vibes to keep relaxed yet many things to do to stay busy. Railay is what Thailand dreams are made of',
      detailImageUrl:
          'https://media.tacdn.com/media/attractions-splice-spp-674x446/0b/39/82/88.jpg',
      duration: 2,
      price: 120,
      category: 'Beach',
    ),
    TopTrip(
      country: 'Malaysia',
      destination: 'Genting Resort',
      mainMenuImageUrl:
          'https://s-light.tiket.photos/t/01E25EBZS3W0FY9GTG6C42E1SE/rsfit19201280gsm/events/2021/02/18/e3300a0a-04c9-4d3b-9a18-94eecfb32818-1613616832270-e748377993909ecde3a77ec58321ce14.jpg',
      rating: '4.6',
      description:
          'Resorts World Genting is Malaysia\'s premier integrated resort destination and home of Southeast Asia\'s Anticipated Theme Park Genting SkyWorlds. For over 50 years, Resorts World Genting has been providing its visitors entertainment, dining, shopping, cultural, rest and relaxation experiences at 6,000 feet above sea level.',
      detailImageUrl:
          'https://cdn.statically.io/img/liburmulu.com/f=auto%2Cq=60/wp-content/uploads/2018/12/Genting-highlands-dari-udara.jpg',
      duration: 3,
      price: 180,
      category: 'Hotel',
    ),
    TopTrip(
      country: 'Indonesia',
      destination: 'Nusa Penida',
      mainMenuImageUrl:
          'https://dynamic-media-cdn.tripadvisor.com/media/photo-o/15/f5/3e/e5/nusa-penida-island.jpg?w=1200&h=-1&s=1',
      rating: '4.8',
      description:
          'Nusa Penida is the largest and most exotic of the 3 Nusa islands, thanks to its collection of unique Hindu temples and picturesque natural features of cliff formations and lagoons. More recently, the island became best known as the new sanctuary of the once-endangered Bali starling (originally an endemic species from the forested region of West Bali National Park) following a highly successful captive breeding programme.',
      detailImageUrl:
          'https://i0.wp.com/girleatworld.net/wp-content/uploads/2018/04/nusa-penida-kelingking-1.jpg?fit=1400%2C1116&ssl=1',
      duration: 2,
      price: 150,
      category: 'Beach',
    ),
  ];
}
