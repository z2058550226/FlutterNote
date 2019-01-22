import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';

import 'package:flutter_app/ch2_foundation_widgets/s1_widget_introduction/counter.dart';
import 'package:flutter_app/ch2_foundation_widgets/s1_widget_introduction/tap_box.dart';
import 'package:flutter_app/ch2_foundation_widgets/s1_widget_introduction/tap_box_b.dart';
import 'package:flutter_app/ch2_foundation_widgets/s1_widget_introduction/tap_box_c.dart';
import 'package:flutter_app/ch2_foundation_widgets/s1_widget_introduction/cupertino_test_route.dart';
import 'ch2_foundation_widgets/s2_text_font_style/text_list.dart';
import 'ch2_foundation_widgets/s3_button/button_demo.dart';
import 'ch2_foundation_widgets/s4_image_icon/image_icon_route.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Demo',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      routes: {
        "new_page": (context) => NewRoute(),
      },
      home: MyHomePage(title: 'Flutter Note Home Page'),
    );
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key key, this.title}) : super(key: key);

  final String title;

  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter--;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Center(
        child: ListView(children: <Widget>[
          Text(
            'You have pushed the button this many times:',
            textAlign: TextAlign.center,
          ),
          Text(
            '$_counter',
            textAlign: TextAlign.center,
            style: Theme.of(context).textTheme.display1,
          ),
          FlatButton(
            child: Text("Open new Route"),
            textColor: Colors.lightBlue,
            onPressed: () {
              // navigate to new route by route table
              Navigator.pushNamed(context, "new_page");
            },
          ),
          RandomWordsWidget(),
          Divider(),
          Text(
            "2.1 widget简介",
            textAlign: TextAlign.center,
          ),
          DemoButton(context, "Counter Demo", (context) => CounterRoute()),
          DemoButton(context, "Tap box", (context) => TapboxRoute()),
          DemoButton(context, "Tap box B", (context) => ParentWidget()),
          DemoButton(context, "Tap box C", (context) => ParentWidgetC()),
          DemoButton(context, "Cupertino Test Route", (context) => CupertinoTestRoute()),
          Divider(),
          Text(
            "2.2 文本、文字样式",
            textAlign: TextAlign.center,
          ),
          DemoButton(context, "Text style list Route", (context) => TextStyleListRoute()),
          DemoButton(context, "Button Route", (context) => ButtonDemoRoute()),
          DemoButton(context, "Image Icon Route", (context) => ImageIconRoute()),
        ]),
      ),
      floatingActionButton: FloatingActionButton(
        onPressed: _incrementCounter,
        tooltip: 'Increment',
        child: Icon(Icons.add),
      ), // This trailing comma makes auto-formatting nicer for build methods.
    );
  }
}

class DemoButton extends FlatButton {
  DemoButton(BuildContext context, String text, WidgetBuilder builder)
      : super(
          child: Text(text),
          textColor: Colors.blue,
          color: Colors.grey[300],
          onPressed: () =>
              Navigator.push(context, MaterialPageRoute(builder: builder)),
        );
}

class NewRoute extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text("New Route"),
      ),
      body: Center(
        child: Text("This is a new route"),
      ),
    );
  }
}

class RandomWordsWidget extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    final wordPair = new WordPair.random();
    return Padding(
      padding: const EdgeInsets.all(8.0),
      child: new Text(
        wordPair.toString(),
        textAlign: TextAlign.center,
      ),
    );
  }
}
