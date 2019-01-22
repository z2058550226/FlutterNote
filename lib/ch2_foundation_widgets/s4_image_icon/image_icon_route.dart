import 'package:flutter/material.dart';

class ImageIconRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Icon"),
      ),
      body: ListView(
        children: <Widget>[
          Text("network image"),
          Image(
            image: NetworkImage(
                "https://avatars1.githubusercontent.com/u/22285965?s=460&v=4"),
            width: 100.0,
          ),
          Image.asset(
            "images/avatar.jpeg",
            width: 10.0,
          ),
          Image(image: AssetImage("images/avatar.jpeg"), width: 100.0),
          ListTile(

          ),
        ],
      ),
    );
  }
}
