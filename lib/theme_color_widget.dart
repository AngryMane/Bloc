import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model.dart';

class ThemeColorWidget extends StatelessWidget {
  ThemeColorWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    Widget widget = Consumer<Model>(
      builder: (context, data, child) {
        return Container(
          width: 100,
          height: 100,
          child: Text((data.isDarkMode) ? ('DarkMode') : ('NomalMode')),
        );
      },
      child: null, // there is no big child.
    );

    return GestureDetector(
      child: widget,
      onTap: () {
        Provider.of<Model>(context, listen: false).setIsDarkMode(true);
      },
    );
  }
}
