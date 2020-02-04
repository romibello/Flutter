import 'package:flutter/material.dart';
import 'button_nav.dart';

class DescriptionPlace extends StatelessWidget{
  String namePlace;
  dynamic stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {

    final description = Container(
      margin: new EdgeInsets.only(
        top: 20.0,
        left: 20.0,
        right: 20.0
      ),
      child: new Text(
        descriptionPlace,
        style: const TextStyle(
          fontFamily: "Lato",
          fontSize: 16.0,
          fontWeight: FontWeight.bold,
          color: Color(0xFF56575a)
        ),
      ),
    );
    
    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star,
        //color: Colors.yellow,
        color: Color(0xFFf2C611),
      ),
    );

    final star_half = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star_half,
        //color: Colors.yellow,
        color: Color(0xFFf2C611),
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0
      ),
      child: Icon(
        Icons.star_border,
        //color: Colors.yellow,
        color: Color(0xFFf2C611),
      ),
    );

    final titleWithStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(
            top: 320.0,
            left: 20.0,
            right: 20.0,
          ),
          child: Text(
            namePlace,
            style: TextStyle(
              fontFamily: "Lato",
              fontSize: 16.0,
              fontWeight: FontWeight.bold,

          ),
            textAlign: TextAlign.left,
          ),
        ),
        Row(
          children: <Widget>[
            star,
            star,
            star,
            star_half,
            star_border,
          ],
        )
      ],
    );

    return Column(
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        titleWithStars,
        description,
        ButtonNav("Navigate"),
      ],
    );
  }

}