import 'package:flutter/material.dart';

class CustomAppbar extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Row(
      children: <Widget>[
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Column(
            children: <Widget>[
              Icon(
                Icons.home,
                size: 30,
                color: Colors.lightGreen,
              ),
              Text(
                "My orders",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Column(
            children: <Widget>[
              Icon(
                Icons.location_on,
                size: 30,
                color: Colors.redAccent,
              ),
              Text(
                "Location",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Column(
            children: <Widget>[
              Icon(
                Icons.person,
                size: 30,
                color: Colors.grey,
              ),
              Text(
                "Profile",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              )
            ],
          ),
        ),
        Padding(
          padding: EdgeInsets.only(right: 10.0),
          child: Column(
            children: <Widget>[
              Icon(
                Icons.notifications,
                size: 30,
                color: Colors.amber,
              ),
              Text(
                "Notifications",
                style: TextStyle(fontSize: 10, color: Colors.grey),
              )
            ],
          ),
        ),
      ],
    );
  }

}