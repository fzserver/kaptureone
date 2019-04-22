import 'package:flutter/material.dart';
import '../widget/DealsBox.dart';

class MarriageCard extends StatelessWidget{
  @override
  Widget build(BuildContext context) {
    return Container(
      padding: EdgeInsets.all(10.0),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.spaceBetween,
        children: <Widget>[
          Container(
            height: 100,
            width: 110,
            child: Image(image: AssetImage("assets/images/bg.png")),
          ),
          Text("Name", style: TextStyle(fontSize: 16, fontWeight: FontWeight.bold),),
          DealsBox(),
          Icon(Icons.phone, size: 40, color: Colors.amber,),
          Icon(Icons.favorite, color: Colors.red, size: 40,)
        ],
      ),
    );
  }

}