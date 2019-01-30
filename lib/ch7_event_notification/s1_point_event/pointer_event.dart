import 'package:flutter/material.dart';

class PointerTest1Route extends StatefulWidget {
  @override
  _PointerTest1RouteState createState() => _PointerTest1RouteState();
}

class _PointerTest1RouteState extends State<PointerTest1Route> {
  PointerEvent _event;

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Pointer Test 1"),
      ),
      body: Listener(
        child: Container(
          alignment: Alignment.center,
          color: Colors.blue,
          width: 300.0,
          height: 590.0,
          child: Text(
            _event?.toString() ?? "",
            style: TextStyle(color: Colors.white),
          ),
        ),
        onPointerDown: (event) => setState(() => _event = event),
        onPointerMove: (event) => setState(() => _event = event),
        onPointerUp: (event) => setState(() => _event = event),
      ),
    );
  }
}
