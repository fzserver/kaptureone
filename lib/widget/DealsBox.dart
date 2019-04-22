import 'package:flutter/material.dart';

class DealsBox extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(5.0),
      width: 110,
      height: 80,
      decoration: BoxDecoration(
          border: Border.all(color: Colors.blue),
          borderRadius: BorderRadius.circular(5.0)),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.start,
        children: <Widget>[
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Image(
                image: AssetImage("assets/images/deals.png"),
                height: 30,
              ),
              Text(
                "Deals",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Pending",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              Text(
                "12",
                style: TextStyle(color: Colors.blue),
              )
            ],
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Text(
                "Completed",
                style: TextStyle(fontSize: 12, fontWeight: FontWeight.bold),
              ),
              Text("20", style: TextStyle(color: Colors.blue))
            ],
          ),
        ],
      ),
    );
  }
}
