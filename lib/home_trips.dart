import 'package:flutter/material.dart';
import 'package:platzi_trips_app/review_list.dart';

import 'description_place.dart';
import 'header_appbar.dart';

class HomeTrips extends StatelessWidget{

  String descriptionDummy =
      "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ligula elit, molestie sit amet mollis non, malesuada fringilla est. Morbi dapibus arcu arcu, vel blandit mi consequat auctor. \n\nCras commodo facilisis varius. Cras hendrerit tincidunt purus, nec varius nisi consequat id. Maecenas et purus vitae lectus venenatis vulputate.";

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        ListView(
          children: <Widget>[
            DescriptionPlace("Santa Marta", 4, descriptionDummy),
            ReviewList()
          ],
        ),
        HeaderAppbar()
      ]
    );

  }

}