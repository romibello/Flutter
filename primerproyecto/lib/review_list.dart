import 'package:flutter/material.dart';
import 'review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Review("assets/img/people.jpg", "susanita", "1 review - 5 photos", "there is an amazing place in nombre_random"),
        new Review("assets/img/girl.jpg", "josefa", "3 review - 5 photos", "comment"),
        new Review("assets/img/missing.jpg", "lalalalaaa", "2 review - 8 photos", "comment"),
      ],
    );
  } 
  
}



//class ReviewList extends StatelessWidget{
  //List<Review> items = [];
  //ReviewList(this.items);
  //@override
  //Widget build(BuildContext context) {
    //final reviewList = Column(
      //children: items
    //);
    //return reviewList;
  //}
//}
