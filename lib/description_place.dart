import 'package:flutter/material.dart';

class DescriptionPlace extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    // TODO: implement build
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
          child: Text("Duwili Ella",
              style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900),
              textAlign: TextAlign.left),
        ),
        Row(
          children: <Widget>[star, star, star, star, star],
        )
      ],
    );

    final full_description = ListView(
      padding: const EdgeInsets.all(8),
      children: <Widget>[
        Container(child: title_stars),
        Container(
            child: Text(
                'Lorem ipsum dolor sit amet, consectetur adipiscing elit. Pellentesque ligula elit, molestie sit amet mollis non, malesuada fringilla est. Morbi dapibus arcu arcu, vel blandit mi consequat auctor. Cras commodo facilisis varius. Cras hendrerit tincidunt purus, nec varius nisi consequat id. Maecenas et purus vitae lectus venenatis vulputate. Aenean sed imperdiet lacus. Sed pharetra dapibus ipsum vel fermentum. Sed nisi magna, ullamcorper ut massa vitae, congue faucibus risus. Morbi euismod purus ex, et lacinia purus auctor quis. ',
                style: TextStyle(fontSize: 30.0, fontWeight: FontWeight.w900))),
      ],
    );

    return full_description;
  }
}
