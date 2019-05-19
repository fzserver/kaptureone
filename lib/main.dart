import 'package:flutter/material.dart';
import './Screens/Rootpage.dart';
import './widget/auth.dart';


void main() => runApp(Kapture());

class Kapture extends StatelessWidget {
  @override
  Widget build(BuildContext context) => MaterialApp(
        title: 'Kapture One',
        debugShowCheckedModeBanner: false,
        theme: ThemeData(iconTheme: IconThemeData(color: Color.fromRGBO(9, 9, 26, 1.0),)),
        home: RootPage(auth: Auth(),),
      );
}
