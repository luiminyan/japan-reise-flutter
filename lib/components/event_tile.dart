import 'package:flutter/material.dart';

class EventTile extends StatelessWidget {
  // attributes
  final String name;
  final String price;
  // path to string
  final String imagePath;
  final String rating;
  final void Function()? details; //?: nullable

  // constructor
  const EventTile(
      {super.key,
      required this.name,
      required this.price,
      required this.imagePath,
      required this.rating,
      required this.details});

  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(horizontal: 15),
      // make price and rating distance from edge
      padding: EdgeInsets.all(8),
      width: 200,
      decoration: BoxDecoration(
        color: Color.fromARGB(255, 61, 91, 212),
        borderRadius: BorderRadius.circular(20),
      ),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          // make the picture clickable
          GestureDetector(
              onTap: details,
              child: Image.asset(
                imagePath,
                height: 200,
              )),
          Text(
            name,
            style: TextStyle(fontSize: 15, color: Colors.white),
          ),
          SizedBox(height: 10),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: [
              Text(price, style: TextStyle(color: Colors.white)),
              Row(
                children: [
                  Text(
                    rating,
                    style: TextStyle(color: Colors.white),
                  ),
                  Icon(
                    Icons.star,
                    size: 15,
                    color: Color.fromARGB(255, 254, 198, 6),
                  ),
                ],
              )
            ],
          )
        ],
      ),
    );
  }
}
