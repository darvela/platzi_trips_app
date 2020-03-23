import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review.dart';

class ReviewList extends StatelessWidget {
  @override
  Widget build(BuildContext context) {

    final reviewLists = Column (
      crossAxisAlignment: CrossAxisAlignment.start,
      children: <Widget>[
        new Review("assets/img/viajero.jpg", "Juan Di", "1 review 5 photos", "Ther is an amazing place y Sanra Marta"),
        new Review("assets/img/viajero2.jpg", "Astrid", "1 review 2 photos", "Awesome place"),
        new Review("assets/img/viajero3.jpg", "Diego", "3 review 20 photos", "It was a fantastic experience")
      ],

    );

    return reviewLists;
  }

}