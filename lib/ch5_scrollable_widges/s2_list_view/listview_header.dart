import 'package:flutter/material.dart';

class ListViewHeaderRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("ListView Header"),
      ),
      body: Column(children: <Widget>[
        ListTile(title: Text("商品列表")),
        // 这里的高度填充写法比较死板，正常写可以用Expanded
        SizedBox(
          //Material设计规范中状态栏、导航栏、ListTile高度分别为24、56、56
          height: MediaQuery.of(context).size.height - 24 - 56 - 56,
          child:
              ListView.builder(itemBuilder: (BuildContext context, int index) {
            return ListTile(title: Text("$index"));
          }),
        ),
      ]),
    );
  }
}
