import 'package:flutter/material.dart';
import 'package:kaptureone/Screens/MarriageScreen.dart';
import '../widget/CustomAppbar.dart';
import '../widget/auth.dart';

class HomeScreen extends StatelessWidget {
  HomeScreen({this.auth, this.onSingedOut});
  final BaseAuth auth;
  final VoidCallback onSingedOut;

  void _signOut() async {
    try {
      await auth.signOut();
      onSingedOut();
    } catch (e) {
      print(e);
    }
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        backgroundColor: Colors.white,
        leading: Image(image: AssetImage("assets/images/logo.png")),
        actions: <Widget>[
          CustomAppbar(),
          FlatButton(onPressed: _signOut, child: Text("Logout"))
        ],
      ),
      body: Container(
        child: Column(
          children: <Widget>[
            Container(
                width: MediaQuery.of(context).size.width,
                height: MediaQuery.of(context).size.height * 0.3,
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
              height: MediaQuery.of(context).size.height * 0.55,
              padding: EdgeInsets.symmetric(
                  vertical: MediaQuery.of(context).size.height * 0.05),
              child: GridView.count(
                  crossAxisCount: 3,
                  childAspectRatio: 1.0,
                  mainAxisSpacing: 10.0,
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
                  ]
                      .map((Map index) => InkWell(
                        onTap: () => Navigator.push(context, MaterialPageRoute(builder: (context) => MarriageScreen())),
                        child:Column(
                            children: <Widget>[
                              Image(
                                image: AssetImage(index['url']),
                                height: 50,
                                width: 50,
                              ),
                              Text(index['text'])
                            ],
                          )))
                      .toList()),
            ),
          ],
        ),
      ),
    );
  }
}
