import 'package:flutter/material.dart';
import '../widget/MarriageCard.dart';
import '../widget/DividerCard.dart';
import '../Screens/MarriageDetailsScreen.dart';

class MarriageScreen extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          elevation: 0,
          title: Text(
            "Marriage",
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
        body: ListView.separated(
          itemCount: 3,
          separatorBuilder: (BuildContext ctx, int index) => Divider(
                color: Colors.black,
              ),
          itemBuilder: (BuildContext context, int index) => ListTile(
                onTap: () => Navigator.push(
                    context,
                    MaterialPageRoute(
                        builder: (context) => MarriageDetailsScreen())),
                leading: CircleAvatar(
                  backgroundColor: Colors.white,
                  child: Image(
                    image: NetworkImage(
                        'https://images.pexels.com/photos/794254/pexels-photo-794254.jpeg?auto=compress&cs=tinysrgb&dpr=2&h=650&w=940'),
                  ),
                ),
                title: Text(
                  'Sahib',
                  style: TextStyle(fontFamily: 'Helvetica'),
                ),
                subtitle: Text(
                  'Deals => Pending: 12, Completed: 20',
                  style: TextStyle(fontFamily: 'Helvetica'),
                ),
                trailing: Row(
                  mainAxisSize: MainAxisSize.min,
                  children: <Widget>[
                    Icon(
                      Icons.phone,
                      size: 26,
                      color: Colors.amber,
                    ),
                    Icon(
                      Icons.favorite,
                      color: Colors.redAccent,
                      size: 26,
                    )
                  ],
                ),
              ),
        ));
  }
}
