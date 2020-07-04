import 'package:flutter/material.dart';
import './widget_a.dart';
import './widget_b.dart';
import 'theme_color_widget.dart';

class RootWidget extends StatefulWidget {
  RootWidget({Key key}) : super(key: key);

  final String title = "BLOC pattern Demo";

  @override
  _RootWidgetState createState() => _RootWidgetState();
}

class _RootWidgetState extends State<RootWidget> {
  int _counter = 0;

  void _incrementCounter() {
    setState(() {
      _counter++;
    });
  }

  @override
  Widget build(BuildContext context) {
    Widget widgetA = WidgetA();
    Widget widgetB = WidgetB();
    Widget carSpeedWidget = ThemeColorWidget();
    return Scaffold(
      body: Row(
        children: [widgetA, widgetB, carSpeedWidget],
      ),
    );
  }
}
