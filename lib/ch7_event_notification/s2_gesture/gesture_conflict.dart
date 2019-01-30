import 'package:flutter/material.dart';

class GestureConflictRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("手势冲突"),
      ),
      body: GCWidget(),
    );
  }
}

class GCWidget extends StatefulWidget {
  @override
  _GCWidgetState createState() => _GCWidgetState();
}

class _GCWidgetState extends State<GCWidget> {
  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          left: _left,
          child: GestureDetector(
            child: CircleAvatar(child: Text("A")),
            //要拖动和点击的widget
            onHorizontalDragUpdate: (DragUpdateDetails details) {
              setState(() {
                _left += details.delta.dx;
              });
            },
            onHorizontalDragEnd: (details) {
              print("onHorizontalDragEnd");
            },
            onTapDown: (details) {
              print("down");
            },
            onTapUp: (details) {
              print("up");
            },
          ),
        )
      ],
    );
  }
}
