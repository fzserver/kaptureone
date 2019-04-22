import 'package:flutter/material.dart';
import '../widget/DealsBox.dart';

class MarriageDetailsScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {

    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text("Sahibpreet singh"),
          centerTitle: true,
          actions: <Widget>[
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: <Widget>[
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Icon(
                        Icons.location_on,
                        color: Colors.redAccent,
                      ),
                      Text(
                        "Location",
                        style: TextStyle(fontSize: 10),
                      )
                    ],
                  ),
                ),
                Padding(
                  padding: EdgeInsets.only(right: 10.0),
                  child: Icon(Icons.menu),
                ),
              ],
            )
          ],
        ),
        body: Container(
          padding: EdgeInsets.all(10.0),
          child: Row(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.spaceBetween,
            children: <Widget>[
              Container(
                width: MediaQuery.of(context).size.width*0.2,
                child: CircleAvatar(
                  child: Icon(Icons.person),
                  radius: 40,
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.45,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding:  EdgeInsets.only(bottom: 10.0),
                      child: Text("Sahibpreet singh", style: TextStyle(fontSize: 18, fontWeight: FontWeight.bold),),
                    ),
                    Padding(
                      padding:  EdgeInsets.all(15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Text("Wedding", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                          Text("Events", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),),
                          Text("Portfolio", style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold),)
                        ],
                      ),
                    ),
                    Padding(
                      padding: EdgeInsets.symmetric(horizontal: 15.0),
                      child: Row(
                        mainAxisAlignment: MainAxisAlignment.spaceBetween,
                        children: <Widget>[
                          Column(
                            children: <Widget>[
                              Padding(
                                padding:  EdgeInsets.only(bottom: 10.0),
                                child: Icon(Icons.favorite_border, size: 40,),
                              ),
                              Text('Add to favorite', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.blue),)
                            ],
                          ),
                          Column(
                            children: <Widget>[
                              Padding(
                                padding:  EdgeInsets.only(bottom: 10.0),
                                child: Icon(Icons.share, size: 40,),
                              ),
                              Text('Share profile', style: TextStyle(fontSize: 10, fontWeight: FontWeight.bold, color: Colors.blue),)
                            ],
                          )
                        ],
                      ),
                    )
                  ],
                ),
              ),
              Container(
                width: MediaQuery.of(context).size.width*0.30,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding:  EdgeInsets.only(bottom: 20.0),
                      child: Row(
                        children: <Widget>[
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star, color: Colors.amber,),
                          Icon(Icons.star_border),
                          Icon(Icons.star_border),
                        ],
                      ),
                    ),
                    DealsBox()
                  ],
                ),
              )
            ],
          ),
        )
    );
  }

}