import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

import 'profile_place_list.dart';

class ProfilesTrips extends StatelessWidget {
  //String descriptionDummy =
    //  "Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ligula elit, molestie sit amet mollis non, malesuada fringilla est. Morbi dapibus arcu arcu, vel blandit mi consequat auctor. \n\nCras commodo facilisis varius. Cras hendrerit tincidunt purus, nec varius nisi consequat id. Maecenas et purus vitae lectus venenatis vulputate.";

  String pathImage = "assets/img/profile_photo.jpg";

  ProfilesTrips(this.pathImage);

  @override
  Widget build(BuildContext context) {

    final photo = Container (
      margin: EdgeInsets.only(
        top: 90.0,
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


    final contactInfo = Container(
        height: 120.0,
        width: 230.0,
        //margin: EdgeInsets.only(bottom: 29.0,  top: 200.0, left: 80.0),
        child: Container(
          margin: EdgeInsets.only(
            top: 70.0,
            left: 10.0,
          ),
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: <Widget>[
              Text("Pathum Tzoo",
                  //textAlign: TextAlign.right,
                  style: TextStyle(color: Colors.white, fontSize: 20.0, fontWeight: FontWeight.normal)),
              Text("pathumtzoo@gmail.com",
                  //textAlign: TextAlign.left,
                  style: TextStyle(color: Colors.white, fontSize: 16.0, fontWeight: FontWeight.w200)),
            ],
          ),
        )
    );

    final fullProfile = Row(
      children: <Widget>[
        photo,
        contactInfo
      ],
    );

    final readLater = Container(
      margin: EdgeInsets.only(
        top: 180.0,
        right: 42.0,
        left: 20.0
      ),
      child: Icon(
        Icons.bookmark,
        color: Colors.white
      ),
    );

    final gift = Container(
      margin: EdgeInsets.only(
        top: 180.0,
        right: 42.0,
      ),
      child: Icon(
          Icons.card_giftcard,
          color: Colors.white
      ),
    );

    final add = Container(
      margin: EdgeInsets.only(
        top: 180.0,
        right: 42.0,
      ),
      child: Icon(
        Icons.add_circle,
        color: Colors.white,
        size: 60.0,
      ),
    );

    final mail = Container(
      margin: EdgeInsets.only(
        top: 180.0,
        right: 42.0,
      ),
      child: Icon(
          Icons.email,
          color: Colors.white
      ),
    );

    final person = Container(
      margin: EdgeInsets.only(
        top: 180.0,
        right: 10.0,
      ),
      child: Icon(
          Icons.person,
          color: Colors.white
      ),
    );


    final buttons = Row(
      children: <Widget>[
        readLater,
        gift,
        add,
        mail,
        person
      ],
    );



    final profileText = Container(
      margin: EdgeInsets.only(
        top: 0.0,
        left: 20.0,
      ),
      child: Text(
        "Profile",
        style: TextStyle(
        color: Colors.white,
        fontSize: 30.0,
        fontFamily: "Raleway",
        fontWeight: FontWeight.bold),
      )
    );


    final settings = Container(
      margin: EdgeInsets.only(
        top: 0.0,
        left: 220.0,
      ),
      child: Icon(
        Icons.settings, color: Colors.grey,
        size: 15.0,
      ),
    );

    final profileHeader = Row(
      children: <Widget>[
        profileText,
        settings
      ],
    );


    final gradientBack = Container(
      height: 250.0,
      decoration: BoxDecoration(
          gradient: LinearGradient(
              colors: [Color(0xFF633ad0), Color(0xFF6c00ce)],
              begin: FractionalOffset(0.2, 0.0),
              end: FractionalOffset(1.0, 0.6),
              stops: [0.0, 0.6],
              tileMode: TileMode.clamp
          )
      ),
      child: profileHeader,
      alignment: Alignment(-0.9, -0.6),
    );

    final profile = Container(
      child: Stack(
        children: <Widget>[
          ProfilePlaceList(),
          gradientBack,
          fullProfile,
          buttons,
        ],
      ),

    );

    return profile;
  }
}
