import 'package:flutter/material.dart';
import 'package:platzi_trips_app/card_image.dart';


class CardImageList extends StatelessWidget{

  @override
  Widget build(BuildContext context) {

    return Container(
      height: 350.0,
      child: ListView(
        padding: EdgeInsets.all(25.0),
        scrollDirection: Axis.horizontal,
        children: <Widget>[
          CardImage("assets/img/sogamoso.JPG"),
          CardImage("assets/img/santaMarta.jpg"),
          CardImage("assets/img/salento.jpg"),
          CardImage("assets/img/villaDeLeyva.jpg"),
        ],
      ),
    );
  }

}