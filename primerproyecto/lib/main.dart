import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'header_appbar.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final dummyDescription = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book." 
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book 3." ;
  
  
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        body: Stack(//Stack me permite acomodar los elementos unos sobre otros
          children: <Widget>[
            ListView(
              children: <Widget>[
                DescriptionPlace("bahamas", 4, dummyDescription),
                ReviewList()
              ],
            ),
            HeaderAppBar(),
          ],
        ),
      ),//MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

