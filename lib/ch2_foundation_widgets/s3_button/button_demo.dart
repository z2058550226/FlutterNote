import 'package:flutter/material.dart';

class ButtonDemoRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Button Demo"),
      ),
      body: ListView(
        children: <Widget>[
          RaisedButton(
            child: Text("normal"),
            onPressed: () => {},
          ),
          FlatButton(
            child: Text("normal"),
            onPressed: () => {},
          ),
          OutlineButton(
            child: Text("normal"),
            onPressed: () => {},
          ),
          IconButton(
            icon: Icon(Icons.thumb_up),
            onPressed: () => {},
          ),
          FlatButton(
            color: Colors.blue,
            highlightColor: Colors.green[700],
            colorBrightness: Brightness.light,
            splashColor: Colors.red,
            child: Text("Submit"),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            onPressed: () => {},
          ),
          RaisedButton(
            color: Colors.blue,
            highlightColor: Colors.green[700],
            colorBrightness: Brightness.light,
            splashColor: Colors.red,
            child: Text("Submit"),
            shape: RoundedRectangleBorder(
                borderRadius: BorderRadius.circular(20.0)),
            onPressed: () => {},
          )
        ],
      ),
    );
  }
}
