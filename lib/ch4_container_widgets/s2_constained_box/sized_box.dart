import 'package:flutter/material.dart';

class SizedBoxRoute extends StatelessWidget {
  final Widget redBox = DecoratedBox(
    decoration: BoxDecoration(color: Colors.red),
  );

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch CheckBox"),
      ),
      body: SizedBox(width: 80.0, height: 80.0, child: redBox),
    );
  }
}
