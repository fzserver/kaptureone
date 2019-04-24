import 'package:flutter/material.dart';
import '../widget/MarriageCard.dart';
import '../widget/DividerCard.dart';
import '../Screens/MarriageDetailsScreen.dart';

class MarriageScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        elevation: 0,
        title: Text("Marriage", style: TextStyle(fontSize: 23),),
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
                      color: Colors.purple,
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
      body: ListView(
        children: <Widget>[
          GestureDetector(
              onTap: (){
                Navigator.push(context,
                    MaterialPageRoute(builder: (context) => MarriageDetailsScreen()));
              },
              child: MarriageCard()),
          DividerCard(),
          MarriageCard(),
          DividerCard(),
          MarriageCard(),
        ],
      )
    );
  }

}