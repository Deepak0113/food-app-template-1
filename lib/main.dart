import 'package:flutter/material.dart';
import 'package:template_food_1/Screens/DetailScreen.dart';
import 'package:template_food_1/Screens/HomeScreen.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      initialRoute: HomeScreen.idScreen,
      routes: {
        HomeScreen.idScreen: (context) => HomeScreen(),
        DetailScreen.idScreen: (context) => DetailScreen(),
      },
      debugShowCheckedModeBanner: false,
    );
  }
}