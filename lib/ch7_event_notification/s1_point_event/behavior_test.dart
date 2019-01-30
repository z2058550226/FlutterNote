import 'package:flutter/material.dart';

class BehaviorTest1Route extends StatefulWidget {
  @override
  _BehaviorTest1RouteState createState() => _BehaviorTest1RouteState();
}

class _BehaviorTest1RouteState extends State<BehaviorTest1Route> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Behavior Test1"),
      ),
      body: Column(
        children: <Widget>[
          Listener(
              child: ConstrainedBox(
                constraints: BoxConstraints.tight(Size(300.0, 150.0)),
                child: Center(child: Text("Box A")),
              ),
              // opaque表示透明的区域也算点击事件，这里的ConstrainedBox是可以打印log的。
              behavior: HitTestBehavior.opaque,
              onPointerDown: (event) => print("down A")),
          Listener(
            child: Stack(
              children: <Widget>[
                Listener(
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tight(Size(300.0, 200.0)),
                    child: DecoratedBox(
                        decoration: BoxDecoration(color: Colors.blue)),
                  ),
                  onPointerDown: (event) => print("down0"),
                ),
                Listener(
                  child: ConstrainedBox(
                    constraints: BoxConstraints.tight(Size(200.0, 100.0)),
                    child: Center(child: Text("左上角200*100范围内非文本区域点击")),
                  ),
                  onPointerDown: (event) => print("down1"),
                  //behavior: HitTestBehavior.translucent, //放开此行注释后可以"点透"
                )
              ],
            ),
            //onPointerDown: (event) => print("down A"),
            //behavior: HitTestBehavior.translucent,
          ),
          Listener(
            //忽略子树点击事件，但其本身能相应点击事件。
            // 如果使用IgnorePointer，则up也不会输出，因为IgnorePointer自身也忽略响应事件。
            child: AbsorbPointer(
              child: Listener(
                child: Container(
                  color: Colors.red,
                  width: 200.0,
                  height: 100.0,
                ),
                onPointerDown: (event) => print("in"),
              ),
            ),
            onPointerDown: (event) => print("up"),
          )
        ],
      ),
    );
  }
}
