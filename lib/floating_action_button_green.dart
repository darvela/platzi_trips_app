import 'package:flutter/material.dart';

class FloatingActionButtonGreen extends StatefulWidget{
  @override
  State<StatefulWidget> createState() {
    return _FloatingActionButtonGreen();
  }

}

class _FloatingActionButtonGreen extends State<FloatingActionButtonGreen>{

  bool isFavorite = false;

  void onPressedFav(){
    setState(() {
      this.isFavorite = !this.isFavorite;
    });

    Scaffold.of(context).showSnackBar(
        SnackBar(
            content: Text("Added to your Favorites")
        )
    );
  }

  @override
  Widget build(BuildContext context) {

    return FloatingActionButton(
      backgroundColor: Color(0xFF11DA53),
      mini: true,
      tooltip: "Fav",
      onPressed: onPressedFav,
      child: Icon(
          this.isFavorite ? Icons.favorite : Icons.favorite_border
      )
    );
  }

}
