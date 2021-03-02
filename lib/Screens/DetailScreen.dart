import 'package:flutter/material.dart';

class DetailScreen extends StatefulWidget {
  static const String idScreen = "detailScreen";
  @override
  _DetailScreenState createState() => _DetailScreenState();
}

class _DetailScreenState extends State<DetailScreen> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        backgroundColor: Color(0xffdc9afe),
        body: Column(
          children: [
            Center(
              child: Container(
                child: Image.asset(
                  "images/sample_image.jpg",
                  height: 340.0,
                ),
              ),
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 15.0),
              child: Text("Ingredients", style: TextStyle(fontSize: 22.0, color: Colors.white),),
            ),
            Padding(
              padding: const EdgeInsets.only(top: 10.0, bottom: 20.0, left: 20.0),
              child: Row(
                children: [
                  Ingredient(),
                  Ingredient(),
                  Ingredient(),
                  Ingredient(),
                ],
              ),
            ),
            Container(
                padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
                alignment: Alignment.topLeft,
                child: Text("Details", style: TextStyle(fontSize: 22.0, color: Colors.white),)
            ),
            Container(
              alignment: Alignment.topLeft,
              padding: const EdgeInsets.symmetric(horizontal: 30.0, vertical: 5.0),
              child: Text(
                "The sweet and subtle salty combo of chocolate meets caaramel. Introduce the Caramel Duo to your mouth!",
                style: TextStyle(fontSize: 14.0, color: Colors.grey[200]),
              ),
            ),
            Container(
              margin: EdgeInsets.only(top: 25.0),
              child: Padding(
                padding: const EdgeInsets.only(left: 30.0, right: 10.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.spaceBetween,
                  children: [
                    Column(
                      crossAxisAlignment: CrossAxisAlignment.start,
                      children: [
                        Text("\$45", style: TextStyle(fontSize: 25.0, fontWeight: FontWeight.bold),),
                        Text("TOTAL PAYBLE", style: TextStyle(fontSize: 15.0, color: Colors.grey[200]))
                      ],
                    ),
                    FlatButton(
                        child: Container(
                          padding: EdgeInsets.symmetric(horizontal: 22.0, vertical: 12.0),
                          decoration: BoxDecoration(
                            borderRadius: BorderRadius.circular(20.0),
                            color: Colors.white,
                          ),
                          child: Text("Add to Cart", style: TextStyle(fontSize: 15.0, color: Colors.black)),
                      ),
                      onPressed: (){},
                    )
                  ],
                ),
              ),
            )
          ],
        ),
    );
  }

  Widget Ingredient(){
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 5.0),
      padding: EdgeInsets.only(left: 12.0, right: 12.0, top: 25.0, bottom: 10.0),
      decoration: BoxDecoration(
        borderRadius: BorderRadius.all(Radius.circular(50.0)),
        color: Color(0xfff2f0f5),
        // color: Colors.yellow
      ),
      child: Column(
        children: [
          Text("Suger", style: TextStyle(fontSize: 17.5),),
          Padding(
            padding: const EdgeInsets.only(top: 3.5),
            child: Text("8 Gram", style: TextStyle(fontSize: 12.0),),
          ),
          Padding(
            padding: const EdgeInsets.only(top: 10.0),
            child: Container(
              height: 45.0,
              width: 45.0,
              decoration: BoxDecoration(
                borderRadius: BorderRadius.all(Radius.circular(50.0)),
                color: Colors.white,
              ),
              child: Center(child: Text(".3%", style: TextStyle(fontSize: 17.0, fontWeight: FontWeight.bold),)),
            ),
          )
        ],
      ),
    );
  }
}
