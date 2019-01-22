import 'package:flutter/material.dart';

class ImageIconRoute extends StatelessWidget {
  final String icons = "\uE914 \uE000 \uE90D";
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Image Icon"),
      ),
      body: ListView(
        children: <Widget>[
          Text("network image"),
          Image(
              image: NetworkImage(
                  "https://avatars1.githubusercontent.com/u/22285965?s=460&v=4"),
              height: 100.0,
              width: 100.0),
          Image.asset("images/avatar.jpeg", height: 100.0, width: 100.0),
          Image(
              image: AssetImage("images/avatar.jpeg"),
              height: 100.0,
              width: 100.0),
          Text("颜色混合模式："),
          Image(
            image: AssetImage("images/avatar.jpeg"),
            width: 100.0,
            height: 100.0,
            color: Colors.blue,
            colorBlendMode: BlendMode.difference,
          ),
          Text("重复repeat："),
          Image(
            image: AssetImage("images/avatar.jpeg"),
            width: 100.0,
            height: 50.0,
            repeat: ImageRepeat.repeatX,
          ),
          Text("使用Material Design字体图标："),
          Text(icons,
            style: TextStyle(
                fontFamily: "MaterialIcons",
                fontSize: 24.0,
                color: Colors.green
            ),
          ),
          Row(// 更加编程友好的代码实现
            mainAxisAlignment: MainAxisAlignment.center,
            children: <Widget>[
              Icon(Icons.accessible,color: Colors.green,),
              Icon(Icons.error,color: Colors.green,),
              Icon(Icons.fingerprint,color: Colors.green,),
            ],
          ),
          Text("fix 属性："),
          Row(
            children: <Widget>[
              Image.asset(
                "images/avatar.jpeg",
                fit: BoxFit.fill,
                width: 200.0,
                height: 100.0,
              ),
              Text("BoxFit.fill"),
            ],
          ),
          Row(
            children: <Widget>[
              Image.asset(
                "images/avatar.jpeg",
                fit: BoxFit.contain,
                width: 200.0,
                height: 100.0,
              ),
              Text("BoxFit.contain"),
            ],
          ),
          Row(
            children: <Widget>[
              Image.asset(
                "images/avatar.jpeg",
                fit: BoxFit.cover, // 类似于centerCrop
                width: 200.0,
                height: 100.0,
              ),
              Text("BoxFit.cover"),
            ],
          ),
          Row(
            children: <Widget>[
              Image.asset(
                "images/avatar.jpeg",
                fit: BoxFit.fitWidth, // 类似于centerCrop
                width: 200.0,
                height: 100.0,
              ),
              Text("BoxFit.fitWidth"),
            ],
          ),
          Row(
            children: <Widget>[
              Image.asset(
                "images/avatar.jpeg",
                fit: BoxFit.fitHeight, // 类似于centerCrop
                width: 200.0,
                height: 100.0,
              ),
              Text("BoxFit.fitHeight"),
            ],
          ),
          Row(
            children: <Widget>[
              Image.asset(
                "images/avatar.jpeg",
                fit: BoxFit.scaleDown, // 类似于centerCrop
                width: 200.0,
                height: 100.0,
              ),
              Text("BoxFit.scaleDown"),
            ],
          ),
          Row(
            children: <Widget>[
              Image.asset(
                "images/avatar.jpeg",
                fit: BoxFit.none, // 类似于centerCrop
                width: 200.0,
                height: 100.0,
              ),
              Text("BoxFit.none"),
            ],
          ),
        ],
      ),
    );
  }
}
