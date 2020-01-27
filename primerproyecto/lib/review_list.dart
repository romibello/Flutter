import 'package:flutter/material.dart';
import 'package:primerproyecto/review.dart';

class ReviewList extends StatelessWidget{
  List<Review> items = [];
  ReviewList(this.items);
  @override
  Widget build(BuildContext context) {
    final reviewList = Column(
      children: items
    );
    return reviewList;
  }
}
