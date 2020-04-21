import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/painting.dart';
import 'floating_action_button_green.dart';

class ProfilePlaceItem extends StatelessWidget {
  String pathImage = "assets/img/park.jpg";
  String imageDescription = "Knuckles Mountains Range";
  String imageDetail = "This is a beautiful place with awesome landscapes";
  String steps = "Steps";

  ProfilePlaceItem(
      this.pathImage, this.imageDescription, this.imageDetail, this.steps);

  @override
  Widget build(BuildContext context) {


    final place = Container(
      height: 200.0,
      width: 330.0,
      margin: EdgeInsets.only(left: 20.0),
      decoration: BoxDecoration(
        image: DecorationImage(
          fit: BoxFit.cover,
          image: AssetImage(pathImage),
        ),
        borderRadius: BorderRadius.all(Radius.circular(30.0)),
      ),
    );

    final stepsInfo = Container(
      height: 100.0,
      width: 245.0,
      margin: EdgeInsets.only(bottom: 29.0,  top: 130.0, left: 60.0),
      decoration: BoxDecoration(
          borderRadius: BorderRadius.all(Radius.circular(15.0)),
          border: Border.all(color: Colors.grey, width: 1),
          color: Colors.white,
          boxShadow: <BoxShadow>[
            BoxShadow(
                color: Colors.black38,
                blurRadius: 15.0,
                offset: Offset(0.0, 7.0))
          ]),
      child: Container(
        margin: EdgeInsets.only(
          top:  10.0,
          left: 10.0,
        ),
        child: Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: <Widget>[
            Text(imageDescription,
                //textAlign: TextAlign.right,
                style: TextStyle(fontSize: 20.0, fontWeight: FontWeight.bold)),
            Text(imageDetail,
                //textAlign: TextAlign.left,
                style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.w300)),
            Text(steps,
                //textAlign: TextAlign.left,
                style: TextStyle(
                    fontSize: 14.0,
                    fontWeight: FontWeight.bold,
                    color: Colors.orange)),
          ],
        ),
      )


    );

    return Stack(
      //alignment: Alignment(10.0, 1.1),
      children: <Widget>[
        place,
        stepsInfo,
        Positioned(
            bottom: 20,
            right: 120,
            child: FloatingActionButtonGreen()
        ),
      ],
      overflow: Overflow.clip,
    );
  }
}
