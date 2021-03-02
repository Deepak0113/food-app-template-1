import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:template_food_1/Screens/DetailScreen.dart';
import 'package:toast/toast.dart';

class CardWidget extends StatelessWidget {
  var money;
  var name;
  var img;
  var rate;
  // Card({this.money, this.name, this.img, this.rate});

  @override
  Widget build(BuildContext context) {
    return InkWell(
      onTap: (){
        Navigator.push(context, MaterialPageRoute(builder: (context)=>DetailScreen()));
      },
      child: Container(
        height: 305.0,
        width: 160.0,
        decoration: BoxDecoration(
          borderRadius: BorderRadius.circular(20.0),
          color: Color(0xffdc9afe),
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.end,
          children: [
            Container(
              decoration: BoxDecoration(
                borderRadius: BorderRadius.only(
                  topRight: Radius.circular(20.0),
                  bottomLeft: Radius.circular(40.0),
                ),
                color: Color(0xfff0eff3),
              ),
              padding: EdgeInsets.symmetric(vertical: 12.0, horizontal: 25.0),
              child: Text("\$10", style: TextStyle(fontSize: 18.0),),
            ),
            Center(
              child: Container(
                child: Image.asset(
                    "images/sample_image.jpg",
                    height: 150.0,
                ),
              ),
            ),
            Container(
              alignment: Alignment.center,
              child: Text(
                "Nuts Caramel",
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.w500),
              ),
            ),
            Container(
              alignment: Alignment.center,
              padding: EdgeInsets.only(top: 5.0),
              child: Text(
                "Dukin's",
                style: TextStyle(color: Colors.grey[200]),
              ),
            ),
            Padding(
              padding: const EdgeInsets.symmetric(horizontal: 12.0, vertical: 10.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.spaceBetween,
                children: [
                  Icon(Icons.favorite_border),
                  Text("3.8", style: TextStyle(fontWeight: FontWeight.bold, fontSize: 20.0),)
                ],
              ),
            )
          ],
        ),
      ),
    );
  }
}
