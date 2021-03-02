import 'package:flutter/material.dart';
import 'package:template_food_1/Widgets/CardWidget.dart';

class HomeScreen extends StatefulWidget {
  static const String idScreen = "homeScreen";
  @override
  _HomeScreenState createState() => _HomeScreenState();
}

class _HomeScreenState extends State<HomeScreen> {
  @override
  Widget build(BuildContext context) {
    var size = MediaQuery.of(context).size;
    final double itemHeight = (size.height - kToolbarHeight - 24) / 2;
    final double itemWidth = size.width / 2;
    return Scaffold(
      backgroundColor: Colors.white,
      appBar: AppBar(
        elevation: 0,
        leading: Icon(Icons.menu,color: Colors.black,),
        title: Text("I want to eat...",style: TextStyle(fontSize: 20.0,color: Colors.black),),
        actions: [
          Padding(
            padding: const EdgeInsets.only(right: 10.0),
            child: Icon(Icons.account_circle,color: Colors.black,size: 35.0),
          )
        ],
        backgroundColor: Colors.white,
      ),
      body: Padding(
        padding: const EdgeInsets.symmetric(horizontal: 10.0),
        child: GridView.count(
          childAspectRatio: (itemWidth / itemHeight),
          crossAxisCount: 2,
          shrinkWrap: true,
          scrollDirection: Axis.vertical,
          crossAxisSpacing: 20.0,
          mainAxisSpacing: 22.0,
          children: <Widget>[
            CardWidget(),
            CardWidget(),
            CardWidget(),
            CardWidget(),
            CardWidget(),
            CardWidget(),
            CardWidget(),
          ],
        ),
      ),
    );
  }
}
