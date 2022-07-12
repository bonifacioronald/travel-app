import 'package:flutter/material.dart';
import 'package:provider/provider.dart';

import './models/colors.dart' as custom_colors;
import '../providers/categories_provider.dart';
import '../providers/top_trips_provider.dart';
import '../screens/main_menu_screen.dart';

void main() {
  runApp(const MyApp());
}

class MyApp extends StatelessWidget {
  const MyApp({Key? key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return MultiProvider(
      providers: [
        ChangeNotifierProvider(
          create: (_) => TopTripsProvider(),
        ),
        ChangeNotifierProvider(
          create: (_) => CategoriesProvier(),
        ),
      ],
      child: MaterialApp(
        debugShowCheckedModeBanner: false,
        title: 'Flutter Demo',
        theme: ThemeData(
          fontFamily: 'Poppins',
          accentColor: custom_colors.shadowBlue,
        ),
        home: MainMenuScreen(),
      ),
    );
  }
}
