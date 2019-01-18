import 'package:flutter/material.dart';

class TapboxRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Tap box"),
        ),
        body: Center(
          child: ListView(
            scrollDirection: Axis.horizontal,
            children: <Widget>[TapboxA(), TapboxA()],
          ),
        ),
      );
}

class TapboxA extends StatefulWidget {
  @override
  State<StatefulWidget> createState() => _TapBoxAState();
}

class _TapBoxAState extends State<TapboxA> {
  bool _active = false;

  void _handleTap() {
    setState(() {
      _active = !_active;
    });
  }

  @override
  Widget build(BuildContext context) => GestureDetector(
        onTap: _handleTap,
        child: new Container(
          width: 200.0,
          height: 200.0,
          decoration: BoxDecoration(
            color: _active ? Colors.lightGreen[700] : Colors.grey[600],
          ),
          child: Center(
            child: new Text(
              _active ? 'Active' : 'Inactive',
              style: new TextStyle(fontSize: 32.0, color: Colors.white),
            ),
          ),
        ),
      );
}
