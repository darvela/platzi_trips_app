import 'package:flutter/material.dart';
import 'package:platzi_trips_app/card-image_list.dart';
import 'package:platzi_trips_app/gradient_back.dart';
import 'package:platzi_trips_app/card_image.dart';

class HeaderAppbar extends StatelessWidget {

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        GradientBack("Bienvenido"),
        CardImageList(),
      ],
    );
  }

}