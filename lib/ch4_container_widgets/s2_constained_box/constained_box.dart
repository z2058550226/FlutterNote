import 'package:flutter/material.dart';

class ConstrainedBoxRoute extends StatelessWidget {
  final Widget redBox = DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Constrained Box"),
      ),
      body: ConstrainedBox(
        constraints: BoxConstraints(
            minWidth: double.infinity, //宽度尽可能大
            minHeight: 50.0 //最小高度为50像素
            ),
        child: Container(height: 5.0, child: redBox),
      ),
    );
  }
}
