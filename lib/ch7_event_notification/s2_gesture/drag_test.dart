import 'package:flutter/material.dart';

class DragTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Drag Test"),
      ),
      body: DragDemoWidget(),
    );
  }
}

class DragDemoWidget extends StatefulWidget {
  @override
  _DragDemoWidgetState createState() => _DragDemoWidgetState();
}

class _DragDemoWidgetState extends State<DragDemoWidget> {
  double _top = 0.0; // 距离顶部的偏移
  double _left = 0.0; // 距离左边的偏移
  @override
  Widget build(BuildContext context) {
    return Stack(
      children: <Widget>[
        Positioned(
          top: _top,
          left: _left,
          child: GestureDetector(
            child: CircleAvatar(
              child: Text("A"),
            ),
            onPanDown: (e) {
              // 打印手指按下的位置（相对于屏幕）
              print('用户手指按下：${e.globalPosition}');
            },
            onPanUpdate: (e) {
              setState(() {
                _left += e.delta.dx;
                _top += e.delta.dy;
              });
            },
            onPanEnd: (e) {
              print(e.velocity);
            },
          ),
        )
      ],
    );
  }
}
