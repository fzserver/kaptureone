import 'package:flutter/material.dart';

class HomeScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
//        backgroundColor: Colors.white,
        elevation: 0,
        actions: <Widget>[
          Row(
            children: <Widget>[
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.home, size: 35, color: Colors.lightGreen,),
                    Text("My orders", style: TextStyle(fontSize: 10),)
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.location_on, size: 35, color: Colors.redAccent,),
                    Text("Location", style: TextStyle(fontSize: 10),)
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.person, size: 35, color: Colors.grey,),
                    Text("Profile", style: TextStyle(fontSize: 10),)
                  ],
                ),
              ),
              Padding(
                padding: EdgeInsets.only(right: 10.0),
                child: Column(
                  children: <Widget>[
                    Icon(Icons.notifications, size: 35, color: Colors.amber,),
                    Text("Notifications", style: TextStyle(fontSize: 10),)
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
                                child: Image(image: AssetImage('assets/images/bg.png'))),
                          ),
                        );
                    })
            ),
          ],
        ),
      ),
    );
  }

}