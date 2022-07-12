import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import '../models/colors.dart' as custom_colors;
import '../models/category.dart';
import '../models/top_trip.dart';
import '../providers/categories_provider.dart';
import '../providers/top_trips_provider.dart';
import '../widgets/category_button.dart';
import '../widgets/search_bar.dart';
import '../widgets/top_trip_card.dart';

class MainMenuScreen extends StatefulWidget {
  @override
  State<MainMenuScreen> createState() => _MainMenuScreenState();
}

class _MainMenuScreenState extends State<MainMenuScreen> {
  int selectedCategoryIndex = 0;
  String userProfileAvatarUrl =
      'https://www.shareicon.net/download/2016/05/24/770142_people_512x512.png';

  @override
  Widget build(BuildContext context) {
    List<TopTrip> topTripsList =
        Provider.of<TopTripsProvider>(context).topTripsListData;
    List<Category> categoriesList =
        Provider.of<CategoriesProvier>(context).categoriesListData;

    return Scaffold(
      appBar: AppBar(
        backgroundColor: custom_colors.backgroundColor,
        elevation: 0,
        actions: [
          Container(
            padding: const EdgeInsets.symmetric(horizontal: 20, vertical: 10),
            decoration:
                const BoxDecoration(shape: BoxShape.circle, boxShadow: []),
            child: CircleAvatar(
              backgroundImage: NetworkImage(userProfileAvatarUrl),
            ),
          )
        ],
        iconTheme: const IconThemeData(color: Colors.black87),
      ),
      drawer: const Drawer(),
      body: Container(
        padding: const EdgeInsets.symmetric(horizontal: 20),
        width: double.infinity,
        height: double.infinity,
        color: custom_colors.backgroundColor,
        child: SingleChildScrollView(
          clipBehavior: Clip.none,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Where do you wanna go?',
                style: TextStyle(
                    color: Colors.black87,
                    fontSize: 36,
                    fontWeight: FontWeight.bold,
                    height: 1.1),
              ),
              const SizedBox(
                height: 40,
              ),
              const SearchBar(),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Categories',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 48,
                child: ListView.builder(
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    itemCount: categoriesList.length,
                    itemBuilder: (_, index) {
                      return Row(
                        children: [
                          GestureDetector(
                              onTap: () {
                                setState(() {
                                  categoriesList[selectedCategoryIndex]
                                          .isSelected =
                                      !categoriesList[selectedCategoryIndex]
                                          .isSelected;
                                  categoriesList[index].isSelected =
                                      !categoriesList[index].isSelected;
                                  selectedCategoryIndex = index;
                                });
                              },
                              child: CategoryButton(categoriesList[index])),
                          index == categoriesList.length - 1
                              ? Container()
                              : const SizedBox(
                                  width: 16,
                                )
                        ],
                      );
                    }),
              ),
              const SizedBox(
                height: 40,
              ),
              const Text(
                'Top Trips',
                style: TextStyle(
                  color: Colors.black87,
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Container(
                height: 190,
                child: ListView.builder(
                    clipBehavior: Clip.none,
                    scrollDirection: Axis.horizontal,
                    itemCount: topTripsList.length,
                    itemBuilder: (_, index) {
                      return Row(
                        children: [
                          TopTripCard(topTripsList[index]),
                          index == topTripsList.length - 1
                              ? Container()
                              : const SizedBox(
                                  width: 16,
                                )
                        ],
                      );
                    }),
              ),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        ),
      ),
    );
  }
}
