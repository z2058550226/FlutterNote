import 'package:english_words/english_words.dart';
import 'package:flutter/material.dart';
import 'package:flutter_app/ch2_foundation_widgets/s1_widget_introduction/counter.dart';
import 'package:flutter_app/ch2_foundation_widgets/s1_widget_introduction/cupertino_test_route.dart';
import 'package:flutter_app/ch2_foundation_widgets/s1_widget_introduction/tap_box.dart';
import 'package:flutter_app/ch2_foundation_widgets/s1_widget_introduction/tap_box_b.dart';
import 'package:flutter_app/ch2_foundation_widgets/s1_widget_introduction/tap_box_c.dart';
import 'package:flutter_app/ch5_scrollable_widges/s2_list_view/listview_header.dart';
import 'package:flutter_app/ch5_scrollable_widges/s2_list_view/listview_test.dart';

import 'ch2_foundation_widgets/s2_text_font_style/text_list.dart';
import 'ch2_foundation_widgets/s3_button/button_demo.dart';
import 'ch2_foundation_widgets/s4_image_icon/image_icon_route.dart';
import 'ch2_foundation_widgets/s5_radio_button_check_box/switch_checkbox.dart';
import 'ch2_foundation_widgets/s6_text_field_form/focus_test.dart';
import 'ch2_foundation_widgets/s6_text_field_form/form_test.dart';
import 'ch2_foundation_widgets/s6_text_field_form/text_field_form.dart';
import 'ch3_layout_widgets/s2_row_column/row_colum_test.dart';
import 'ch3_layout_widgets/s3_flex/flex_test.dart';
import 'ch3_layout_widgets/s4_wrap_flow/wrap_flow.dart';
import 'ch3_layout_widgets/s5_stack_positioned/stack_positioned.dart';
import 'ch4_container_widgets/s1_padding/padding.dart';
import 'ch4_container_widgets/s2_constained_box/constained_box.dart';
import 'ch4_container_widgets/s2_constained_box/sized_box.dart';
import 'ch4_container_widgets/s3_decorated_box/decorated_box.dart';
import 'ch4_container_widgets/s4_transform/transform.dart';
import 'ch4_container_widgets/s5_container/container.dart';
import 'ch4_container_widgets/s5_container/padding_margin.dart';
import 'ch5_scrollable_widges/s1_single_child_scroll_view/single_child_scroll_view.dart';
import 'ch5_scrollable_widges/s3_grid_view/grid_delegate.dart';
import 'ch5_scrollable_widges/s3_grid_view/grid_view.dart';
import 'ch5_scrollable_widges/s3_grid_view/infinite_grid_view.dart';
import 'ch5_scrollable_widges/s4_custom_scroll_view/custom_scroll_view.dart';
import 'ch5_scrollable_widges/s5_scroll_controller/scroll_controller.dart';
import 'ch5_scrollable_widges/s5_scroll_controller/scroll_notification.dart';
import 'ch6_functional_widget/s1_pop_interceptor/will_pop_scope.dart';
import 'ch6_functional_widget/s2_data_share/inherited_widget.dart';
import 'ch6_functional_widget/s3_theme/theme_test.dart';
import 'ch7_event_notification/s1_point_event/pointer_event.dart';
import 'ch7_event_notification/s1_point_event/behavior_test.dart';
import 'ch7_event_notification/s2_gesture/gesture_test.dart';
import 'ch7_event_notification/s2_gesture/drag_test.dart';
import 'ch7_event_notification/s2_gesture/drag_vertical.dart';
import 'ch7_event_notification/s2_gesture/scale.dart';
import 'ch7_event_notification/s2_gesture/gesture_recognizer.dart';
import 'ch7_event_notification/s2_gesture/gesture_arena.dart';
import 'ch7_event_notification/s2_gesture/gesture_conflict.dart';

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
          DemoButton(context, "Cupertino Test Route",
              (context) => CupertinoTestRoute()),
          Divider(),
          Text(
            "2.2 文本、文字样式",
            textAlign: TextAlign.center,
          ),
          DemoButton(
              context, "Text style list", (context) => TextStyleListRoute()),
          DemoButton(context, "Button", (context) => ButtonDemoRoute()),
          DemoButton(context, "Image Icon", (context) => ImageIconRoute()),
          DemoButton(
              context, "Switch Checkbox", (context) => SwitchCheckBoxRoute()),
          DemoButton(context, "TextField Form", (context) => TextFieldRoute()),
          DemoButton(context, "Focus Test", (context) => FocusTestRoute()),
          DemoButton(context, "Form Test", (context) => FormTestRoute()),
          Divider(),
          Text(
            "3. 布局类Widgets",
            textAlign: TextAlign.center,
          ),
          DemoButton(context, "Row Column", (context) => RowColumnRoute()),
          DemoButton(
              context, "Flex layout", (context) => FlexLayoutTestRoute()),
          DemoButton(context, "Wrap Flow", (context) => WrapFlowRoute()),
          DemoButton(
              context, "Stack Positioned", (context) => StackPositionedRoute()),
          Divider(),
          Text(
            "4. 容器类Widgets",
            textAlign: TextAlign.center,
          ),
          DemoButton(context, "Padding", (context) => PaddingTestRoute()),
          DemoButton(
              context, "ConstainedBox", (context) => ConstrainedBoxRoute()),
          DemoButton(context, "SizedBox", (context) => SizedBoxRoute()),
          DemoButton(
              context, "Decorated Box", (context) => DecoratedBoxRoute()),
          DemoButton(context, "Transform", (context) => TransformRoute()),
          DemoButton(context, "Container", (context) => ContainerTestRoute()),
          DemoButton(
              context, "Padding Margin", (context) => PaddingMarginRoute()),
          Divider(),
          Text(
            "5. 滚动类Widgets",
            textAlign: TextAlign.center,
          ),
          DemoButton(context, "SingleChildScrollView",
              (context) => SingleChildScrollViewRoute()),
          DemoButton(
              context, "Infinite ListView", (context) => ListViewRoute()),
          DemoButton(
              context, "ListView Header", (context) => ListViewHeaderRoute()),
          DemoButton(context, "GridView", (context) => GridViewRoute()),
          DemoButton(
              context, "GridView Delegate", (context) => GridDelegateRoute()),
          DemoButton(context, "Infinite GridView",
              (context) => InfiniteGridViewRoute()),
          DemoButton(context, "CustomScrollView",
              (context) => CustomScrollViewTestRoute()),
          DemoButton(context, "Scroll Controller",
              (context) => ScrollControllerTestRoute()),
          DemoButton(context, "Scroll Notification",
              (context) => ScrollNotificationTestRoute()),
          Divider(),
          Text(
            "6. 功能类Widgets",
            textAlign: TextAlign.center,
          ),
          DemoButton(context, "返回拦截", (context) => WillPopScopeTestRoute()),
          DemoButton(context, "数据共享", (context) => InheritedWidgetTestRoute()),
          DemoButton(context, "主题", (context) => ThemeTestRoute()),
          Divider(),
          Text(
            "7. 事件，消息",
            textAlign: TextAlign.center,
          ),
          DemoButton(context, "事件冒泡", (context) => PointerTest1Route()),
          DemoButton(context, "Behavior", (context) => BehaviorTest1Route()),
          DemoButton(context, "gesture", (context) => GestureTestRoute()),
          DemoButton(context, "Drag", (context) => DragTestRoute()),
          DemoButton(context, "单一方向拖动", (context) => DragVerticalRoute()),
          DemoButton(context, "缩放监听", (context) => ScaleGestureTestRoute()),
          DemoButton(
              context, "手势识别器", (context) => GestureRecognizerTestRoute()),
          DemoButton(context, "手势竞争", (context) => GestureArenaRoute()),
          DemoButton(context, "手势冲突", (context) => GestureConflictRoute()),
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
