import 'package:flutter/material.dart';

/// 这个页面用来体现State的生命周期
class CounterRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) => Scaffold(
        appBar: AppBar(
          title: Text("Counter Route"),
        ),
        body: CounterWidget(),
        //body: Text("xxx"),
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

  /// 当Widget第一次插入到Widget Tree的时候会被调用
  /// 这个方法相当于onCreate()
  @override
  void initState() {
    super.initState();
    _counter = widget.initValue;
    print('initState');
  }

  /// 当State对象的依赖发生变化时会调用。（通常是在initState方法之后调用）
  @override
  void didChangeDependencies() {
    super.didChangeDependencies();
    print('didChangeDependencies');
  }

  /// 类似于onResume，但它和onResume是不同的，它只为调试提供，在热重载的时候就会调用
  @override
  void reassemble() {
    super.reassemble();
    print('reassemble');
  }

  /// 在Widget的canUpdate返回true的时候调用，在热重载的时候一般由于是相同key和runtime，所以都会回调这个方法
  @override
  void didUpdateWidget(CounterWidget oldWidget) {
    super.didUpdateWidget(oldWidget);
    print('didUpdateWidget');
  }

  /// 构建界面的回调
  @override
  Widget build(BuildContext context) {
    print('build');
    return Center(
      child: FlatButton(
          onPressed: () => setState(() => ++_counter),
          child: Text("$_counter")),
    );
  }

  /// 当State对象从树中被移除时调用，移除不一定代表不会被再插入
  @override
  void deactivate() {
    super.deactivate();
    print('deactive');
  }

  /// 当State对象从树中永久移除时调用。
  @override
  void dispose() {
    super.dispose();
    print('dispose');
  }
}
