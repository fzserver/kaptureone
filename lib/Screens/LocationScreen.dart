import 'package:flutter/material.dart';

class LocationScreen extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
    return Scaffold(
      backgroundColor: Colors.white,
      body: SingleChildScrollView(
        child: Container(
          height: MediaQuery.of(context).size.height,
          child: Column(
            children: <Widget>[
              Container(
                height: MediaQuery.of(context).size.height*0.3,
                child: Column(
                  children: <Widget>[
                    Padding(
                      padding: EdgeInsets.only(top: 50.0, bottom: 20.0),
                      child: Icon(Icons.location_searching, color: Colors.blue, size: 80.0,),
                    ),
                    Text("What's your Location", style: TextStyle(color: Colors.blue, fontSize: 25.0),)
                  ],
                ),
              ),
              Expanded(
                child: Container(
                  padding: EdgeInsets.symmetric(vertical: 100.0, horizontal: 30.0),
                  width: MediaQuery.of(context).size.width,
                  color: Colors.blue,
                  child: Column(
                    children: <Widget>[
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Padding(
                            padding: EdgeInsets.only(right: 20.0),
                            child: Icon(Icons.my_location, color: Colors.amber,),
                          ),
                          Text("Use current location", style: TextStyle(color: Colors.white, fontSize: 20.0 ),),
                        ],
                      ),
                      Padding(
                        padding:  EdgeInsets.symmetric(vertical: 20.0),
                        child: Text("or", style: TextStyle(color: Colors.white, fontStyle: FontStyle.italic)),
                      ),
                      TextFormField(
                        decoration: InputDecoration(
                          border: UnderlineInputBorder(borderRadius: BorderRadius.circular(5.0),),
                          filled: true,
                          hintText: "Search by location",
                          hintStyle: TextStyle(color: Colors.grey),
                          fillColor: Colors.white,
                          prefixIcon: Icon(Icons.search, size: 30.0,),
                          suffixIcon: Icon(Icons.arrow_drop_down)
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }

}