import 'package:flutter/material.dart';

class DividerCard extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Container(
      margin: EdgeInsets.symmetric(vertical: 8.0),
      height: 1,
      width: MediaQuery.of(context).size.width,
      color: Colors.blue,
    );
  }
}
