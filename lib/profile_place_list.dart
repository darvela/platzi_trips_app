import 'package:flutter/material.dart';
import 'profile_place_item.dart';

class ProfilePlaceList extends StatelessWidget{
  @override
  Widget build(BuildContext context) {


    final profilePlacesContainer = Container(
      margin: EdgeInsets.only(
        top: 250.0,
      ),
      child: ListView(
        children: <Widget>[
          ProfilePlaceItem("assets/img/paisaje1.jpg","Italian mountains","The best place on earth","Steps 234,546,67"),
          ProfilePlaceItem("assets/img/paisaje2.jpg", "Country landscape","Peacefull town","789,678,546"),
          ProfilePlaceItem("assets/img/paisaje3.jpg", "Pachavita, Boyacá","The little home of Vela's family", "234,567,788")
        ],
      ),
    );





    return profilePlacesContainer;
  }

}