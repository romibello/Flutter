import 'package:flutter/material.dart';
import 'description_place.dart';
import 'review_list.dart';
import 'review.dart';


void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  final dummyDescription = "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book." 
    "Lorem Ipsum is simply dummy text of the printing and typesetting industry. Lorem Ipsum has been the industry's standard dummy text ever since the 1500s, when an unknown printer took a galley of type and scrambled it to make a type specimen book 3." ;
  
  List<Review> e1 = [new Review("assets/img/people.jpg", "name", "details", "comment"),new Review("assets/img/people.jpg", "name", "details", "comment")];

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: Scaffold(
        appBar: AppBar(
          title: Text('tituloo'),
          centerTitle: true,
          backgroundColor: Colors.red[900],
        ),
        body: new ReviewList(e1)//new DescriptionPlace("bahamas", 4, dummyDescription) ,
        
      ),//MyHomePage(title: 'Flutter Demo Home Page'),
    );
  }
}

