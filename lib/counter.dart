import 'package:flutter/material.dart';

class CounterRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Counter Route"),
        ),
//    body: CounterWidget(),
        body: Text("xxx"),
      );
}

class CounterWidget extends StatefulWidget {
  final int initValue;

  const CounterWidget({Key key, this.initValue = 0});

  @override
  _CounterWidgetState createState() => _CounterWidgetState();
}

class _CounterWidgetState extends State<CounterWidget> {
  int _counter;

  @override
  void initState() {
    super.initState();
    _counter = widget.initValue;
    print('initState');
  }

  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  @override
  void reassemble() {
    super.reassemble();
    print('reassemble');
  }

  @override
  void didUpdateWidget(CounterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  @override
  Widget build(BuildContext context) {
    print('build');
    return Center(
      child: FlatButton(
          onPressed: () => setState(() => ++_counter),
          child: Text("$_counter")),
    );
  }

  @override
  void deactivate() {
    super.deactivate();
    print('deactive');
  }

  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }
}
