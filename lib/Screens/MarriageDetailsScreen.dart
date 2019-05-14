import 'package:flutter/material.dart';
import '../widget/ProfileCard.dart';

class MarriageDetailsScreen extends StatefulWidget {
  @override
  _MarriageDetailsScreenState createState() => _MarriageDetailsScreenState();
}

class _MarriageDetailsScreenState extends State<MarriageDetailsScreen> {
  int _selectedPage = 0;
  final _pageOptions = [Text('Call'), Text('Make a deal')];

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
              Container(
                  padding: EdgeInsets.only(top: 20.0),
                  child: Text(
                    "Portfolio",
                    style:
                        TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold),
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
                        image: NetworkImage(
                            'https://images.pexels.com/photos/1779416/pexels-photo-1779416.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
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
            ],
          ),
        ),
      ),
      bottomNavigationBar: BottomNavigationBar(
        backgroundColor: Colors.blue,
        currentIndex: _selectedPage,
        onTap: (int index) => setState(() => _selectedPage = index),
        items: [
          BottomNavigationBarItem(
              icon: Icon(
                Icons.call,
                color: Colors.amber,
              ),
              title: Text(
                'Call',
                style: TextStyle(color: Colors.white),
              )),
          BottomNavigationBarItem(
            icon: Icon(
              Icons.call,
              color: Colors.white,
            ),
            title: Text(
              'Make a deal',
              style: TextStyle(color: Colors.white),
            ),
          )
        ],
      ),
    );
  }
}
