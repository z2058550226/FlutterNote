import 'package:flutter/material.dart';

class GestureArenaRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("手势竞争"),
      ),
      body: BothDirectionWidget(),
    );
  }
}

class BothDirectionWidget extends StatefulWidget {
  @override
  _BothDirectionWidgetState createState() => _BothDirectionWidgetState();
}

class _BothDirectionWidgetState extends State<BothDirectionWidget> {
  double _top = 0.0;
  double _left = 0.0;

  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: _top,
          left: _left,
          child: GestureDetector(
            child: CircleAvatar(child: Text("A")),
            //垂直方向拖动事件
            onVerticalDragUpdate: (DragUpdateDetails details) {
              setState(() {
                _top += details.delta.dy;
              });
            },
            onHorizontalDragUpdate: (DragUpdateDetails details) {
              setState(() {
                _left += details.delta.dx;
              });
            },
          ),
        )
      ],
    );
  }
}
