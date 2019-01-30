import 'package:flutter/material.dart';

class ScaleGestureTestRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("缩放手势"),
      ),
      body: ScaleTestWidget(),
    );
  }
}

class ScaleTestWidget extends StatefulWidget {
  @override
  _ScaleTestWidgetState createState() => _ScaleTestWidgetState();
}

class _ScaleTestWidgetState extends State<ScaleTestWidget> {
  double _width = 200.0; //通过修改图片宽度来达到缩放效果
  @override
  Widget build(BuildContext context) {
    return Center(
      child: GestureDetector(
        child: Image.asset(
          "images/avatar.jpeg",
          width: _width,
        ),
        onScaleUpdate: (details) {
          setState(() {
            _width = 200 * details.scale.clamp(.8, 10.0);
          });
        },
      ),
    );
  }
}
