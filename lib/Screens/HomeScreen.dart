import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        elevation: 0,
        leading: Image(image: AssetImage("assets/images/logo.png")),
        actions: <Widget>[
          Row(
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
          )
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: 220,
                child: ListView.builder(
                    shrinkWrap: true,
                    scrollDirection: Axis.horizontal,
                    itemCount: 3,
                    itemBuilder: (BuildContext context, int index) {
                      return Container(
                        margin: EdgeInsets.only(right: 10.0),
                        child: Material(
                          color: Colors.white,
                          child: InkWell(
                              onTap: () {},
                              child: Image(
                                  image: AssetImage('assets/images/bg.png'))),
                        ),
                      );
                    })),
          ],
        ),
      ),
    );
  }
}
