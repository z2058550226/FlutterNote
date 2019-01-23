import 'package:flutter/material.dart';

class TextFieldRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("Switch CheckBox"),
      ),
      body: ListView(
        children: <Widget>[
          Column(
            children: <Widget>[
              TextField(
                autofocus: true,
                decoration: InputDecoration(
                    labelText: "用户名",
                    hintText: "用户名或邮箱",
                    prefixIcon: Icon(Icons.person)
                ),
              ),
              TextField(
                decoration: InputDecoration(
                    labelText: "密码",
                    hintText: "您的登录密码",
                    prefixIcon: Icon(Icons.lock)
                ),
                obscureText: true,
              ),
            ],
          ),
          Theme(
              data: Theme.of(context).copyWith(
                  hintColor: Colors.grey[200], //定义下划线颜色
                  inputDecorationTheme: InputDecorationTheme(
                      labelStyle: TextStyle(color: Colors.grey),//定义label字体样式
                      hintStyle: TextStyle(color: Colors.grey, fontSize: 14.0)//定义提示文本样式
                  )
              ),
              child: Column(
                children: <Widget>[
                  TextField(
                    decoration: InputDecoration(
                        labelText: "用户名",
                        hintText: "用户名或邮箱",
                        prefixIcon: Icon(Icons.person)
                    ),
                  ),
                  TextField(
                    decoration: InputDecoration(
                        prefixIcon: Icon(Icons.lock),
                        labelText: "密码",
                        hintText: "您的登录密码",
                        hintStyle: TextStyle(color: Colors.grey, fontSize: 13.0)
                    ),
                    obscureText: true,
                  )
                ],
              )
          )
        ],
      ),
    );
  }
}
