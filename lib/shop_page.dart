import 'package:flutter/material.dart';

import 'grocery_card.dart';
import 'image_slider.dart';

class Shop extends StatefulWidget {
  const Shop({
    Key? key,
  }) : super(key: key);

  @override
  State<Shop> createState() => _ShopState();
}

class _ShopState extends State<Shop> {
  @override
  Widget build(BuildContext context) {
    return SingleChildScrollView(
      child: Column(
        children: [
          SizedBox(
            height: 60.0,
          ),
          Container(
            alignment: Alignment.center,
            color: Colors.grey.shade200,
            child: Center(
              child: Text(
                "Grocery Shop App",
                style: TextStyle(
                  fontSize: 20,
                  fontWeight: FontWeight.bold,
                ),
              ),
            ),
          ),
          SizedBox(
            height: 20.0,
          ),
          Container(
            padding: EdgeInsets.only(left: 10.0, right: 10.0),
            margin: EdgeInsets.only(left: 10.0, right: 10.0),
            decoration: BoxDecoration(
              color: Colors.grey.shade300,
              borderRadius: BorderRadius.circular(20.0),
            ),
            child: TextField(
              decoration: InputDecoration(
                border: InputBorder.none,
                prefixIcon: Icon(
                  Icons.search,
                  color: Colors.grey,
                ),
                hintText: "search",
              ),
            ),
          ),
          SizedBox(
            height: 20,
          ),
          ImageSlider(),
          SizedBox(
            height: 15,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Exclusive offers",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 20.0),
                child: Text(
                  "See all",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GroceryCard(
                    cardImage: 'images/banana.jpg',
                    heading: 'Organic Bananas',
                    text: '7pcs',
                    price: '\$4.99',
                  ),
                  GroceryCard(
                    cardImage: 'images/kino.jpg',
                    heading: 'Red Apple',
                    text: '1kg',
                    price: '\$5.99',
                  ),
                  GroceryCard(
                    cardImage: 'images/peach.png',
                    heading: 'Reddish Peach',
                    text: '1kg',
                    price: '\$3.99',
                  ),
                ],
              ),
            ),
          ),
          SizedBox(
            height: 15.0,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Container(
                padding: EdgeInsets.only(left: 20.0),
                child: Text(
                  "Best Selling",
                  style: TextStyle(
                    fontWeight: FontWeight.bold,
                    fontSize: 15,
                  ),
                ),
              ),
              Container(
                padding: EdgeInsets.only(right: 20.0),
                child: Text(
                  "See all",
                  style: TextStyle(
                    color: Colors.blue,
                    fontSize: 15,
                  ),
                ),
              ),
            ],
          ),
          SingleChildScrollView(
            scrollDirection: Axis.horizontal,
            child: Container(
              child: Row(
                mainAxisAlignment: MainAxisAlignment.start,
                children: [
                  GroceryCard(
                    cardImage: 'images/redpapper.jpg',
                    heading: 'Red Repaper',
                    text: '1kg',
                    price: '\$6.99',
                  ),
                  GroceryCard(
                    cardImage: 'images/kino.jpg',
                    heading: 'Orange Fruit',
                    text: '1kg',
                    price: '\$7.99',
                  ),
                  GroceryCard(
                    cardImage: 'images/peach.png',
                    heading: 'Reddish Peach',
                    text: '1kg',
                    price: '\$3.99',
                  ),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }
}
