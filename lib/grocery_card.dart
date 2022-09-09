import 'package:flutter/material.dart';

class GroceryCard extends StatelessWidget {
  String cardImage;
  String heading;
  String text;
  String price;

  GroceryCard({
    Key? key,
    required this.text,
    required this.heading,
    required this.price,
    required this.cardImage,
  }) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Container(
        margin: EdgeInsets.only(left: 10.0, top: 10.0),
        padding: EdgeInsets.all(15.0),
        height: 270,
        width: 180,
        decoration: BoxDecoration(
          color: Colors.white,
          borderRadius: BorderRadius.circular(10.0),
        ),
        child: Column(
          mainAxisAlignment: MainAxisAlignment.start,
          children: [
            Container(
              height: 150,
              width: 100,
              child: Image.asset(cardImage),
            ),
            Text(heading),
            Text(text),
            SizedBox(
              height: 10,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.spaceBetween,
              children: [
                Text(price),
                Container(
                  height: 30,
                  width: 30,
                  decoration: BoxDecoration(
                    borderRadius: BorderRadius.circular(10.0),
                    color: Colors.blueAccent,
                  ),
                  child: Icon(
                    Icons.add,
                    color: Colors.white,
                  ),
                ),
              ],
            )
          ],
        ));
  }
}
