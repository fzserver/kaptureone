import 'package:flutter/material.dart';
import '../Screens/MarriageScreen.dart';

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
                height: MediaQuery.of(context).size.height*0.3,
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
            Container(
              height: MediaQuery.of(context).size.height*0.55,
              padding: EdgeInsets.symmetric(vertical: MediaQuery.of(context).size.height*0.05),
              child: GridView.count(
                  crossAxisCount: 3,
                  childAspectRatio: 1.5,
                  padding: const EdgeInsets.all(10.0),
                  mainAxisSpacing: 40.0,
                  crossAxisSpacing: 40.0,
                  children: <Map>[
                    {"url": 'assets/images/icon1.png', "text": 'Marriage'},
                    {"url": 'assets/images/icon2.png', "text": 'Events'},
                    {"url": 'assets/images/icon3.png', "text": 'Corporate'},
                    {"url": 'assets/images/icon4.png', "text": 'E-commarce'},
                    {"url": 'assets/images/icon5.png', "text": 'Portfolio'},
                    {"url": 'assets/images/icon6.png', "text": 'Product'},
                    {"url": 'assets/images/icon7.png', "text": 'Food'},
                    {"url": 'assets/images/icon8.png', "text": 'Landscaps'},
                    {"url": 'assets/images/icon9.png', "text": 'Abstract'},
                  ].map((Map index) {
                    return new GridTile(
                        child: GestureDetector(
                          onTap: (){
                            Navigator.push(context,
                                MaterialPageRoute(builder: (context) => MarriageScreen()));
                          },
                          child: Column(
                            children: <Widget>[
                              Image(image: AssetImage(index['url']), height: 50, width: 50,),
                              Text(index['text'])
                            ],
                          ),
                        ));
                  }).toList()),
            ),
          ],
        ),
      ),
    );
  }
}
