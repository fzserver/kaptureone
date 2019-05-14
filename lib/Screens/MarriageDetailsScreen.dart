import 'package:flutter/material.dart';
import '../widget/ProfileCard.dart';

class MarriageDetailsScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "Sahibpreet singh",
            style: TextStyle(fontSize: 23),
          ),
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
        body: SingleChildScrollView(
          child: SafeArea(
            child: Column(
              children: <Widget>[
                ProfileCard(),
                Container(
                    padding: EdgeInsets.only(top: 20.0),
                    child: Text(
                      "Portfolio",
                      style: TextStyle(
                          fontSize: 20.0, fontWeight: FontWeight.bold),
                    )),
                Container(
                    height: MediaQuery.of(context).size.height * 0.45,
                    padding: EdgeInsets.symmetric(
                        vertical: MediaQuery.of(context).size.height * 0.02),
                    child: GridView.count(
                      crossAxisCount: 4,
                      crossAxisSpacing: 5,
                      children: List.generate(12, (index) {
                        return Center(
                            child: Image(
                          image: AssetImage('assets/images/bg.png'),
                        ));
                      }),
                    )),
                Padding(
                  padding: EdgeInsets.only(bottom: 20.0),
                  child: Text(
                    "Show all",
                    style: TextStyle(color: Colors.blue),
                  ),
                ),
                Container(
                  color: Colors.blue,
                  padding:
                      EdgeInsets.symmetric(horizontal: 50.0, vertical: 10.0),
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceBetween,
                    children: <Widget>[
                      Column(
                        children: <Widget>[
                          Icon(
                            Icons.phone,
                            size: 40,
                            color: Colors.amber,
                          ),
                          Text(
                            "Call",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      ),
                      Column(
                        children: <Widget>[
                          Image(
                            image: AssetImage("assets/images/deals.png"),
                            height: 40,
                          ),
                          Text(
                            "Make a deal",
                            style: TextStyle(color: Colors.white),
                          )
                        ],
                      )
                    ],
                  ),
                )
              ],
            ),
          ),
        ));
  }
}
