import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  String namePlace;
  int stars;
  String descriptionPlace;

  DescriptionPlace(this.namePlace, this.stars, this.descriptionPlace);

  @override
  Widget build(BuildContext context) {
    final star_half = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_half,
        color: Color(0xFFf2C611),
      ),
    );

    final star_border = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star_border,
        color: Color(0xFFf2C611),
      ),
    );

    final star = Container(
      margin: EdgeInsets.only(
        top: 323.0,
        right: 3.0,
      ),
      child: Icon(
        Icons.star,
        color: Color(0xFFf2C611),
      ),
    );

    final title_stars = Row(
      children: <Widget>[
        Container(
          margin: EdgeInsets.only(top: 320.0, left: 20.0, right: 20.0),
          child: Text(namePlace,
              style: TextStyle(
                  fontFamily: "Raleway",
                  fontSize: 30.0,
                  fontWeight: FontWeight.w900),
              textAlign: TextAlign.left),
        ),
        Row(
          children: <Widget>[star, star, star, star_border, star_half],
        )
      ],
    );

    final full_description = ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(child: title_stars),
        Container(
            margin: EdgeInsets.only(top: 10, left: 20.0),
            child: new Text(descriptionPlace,
                textAlign: TextAlign.center,
                style: const TextStyle(
                    fontFamily: "Raleway",
                    fontSize: 16.0,
                    fontWeight: FontWeight.normal,
                    color: Color(0xFF56575a)))),
      ],
    );

    return full_description;
  }
}
