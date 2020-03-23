import 'package:flutter/material.dart';

class Review extends StatelessWidget {

  String pathImage = "assets/img/people.jpg";
  String name = "Varuna Yasas";
  String details = "1 review 5 photos";
  String comment = "Ther is an amazing place y Sanra Marta";


  Review(this.pathImage, this.name, this.details, this.comment);

  @override
  Widget build(BuildContext context) {

    final star_half = Container(
      margin: EdgeInsets.only(
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final userComment = Container (
      margin: EdgeInsets.only(
          left: 20.0
      ),
      child: Text (
        comment,
        textAlign: TextAlign.left,
        style: TextStyle(
            fontFamily: "Raleway",
            fontSize: 13.0,
            fontWeight: FontWeight.w900,
            color: Color(0xFFa3a5a7)
        ),
      ),
    );

    final detailsStars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(left: 20.0),
          child: Text(
              details,
              textAlign: TextAlign.left,
              style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 13.0,
                  color: Color(0xFFa3a5a7)),
              ),
        ),
        Row(
          children: <Widget>[star, star, star, star_half, star_border],
        )
      ],
    );

    final userName = Container (
      margin: EdgeInsets.only(
        left: 20.0
      ),

      child: Text (
          name,
          textAlign: TextAlign.left,
          style: TextStyle(
            fontFamily: "Raleway",
              fontSize: 17.0
          ),
      ),
    );

    final userDetails = Column (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        userName,
        detailsStars,
        userComment
      ],
    );

    final photo = Container (
      margin: EdgeInsets.only(
        top: 20.0,
        left: 20.0,
      ),
      width: 80.0,
      height: 80.0,
      decoration: BoxDecoration(
        shape: BoxShape.circle,
        image: DecorationImage (
          fit: BoxFit.cover,
          image: AssetImage (pathImage)
        )
      ),
    );

    return Row(
      children: <Widget>[
        photo,
        userDetails
      ],
    );
  }

}