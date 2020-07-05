import 'package:flutter/material.dart';
import 'package:provider/provider.dart';
import 'model.dart';

class WidgetB extends StatelessWidget {
  WidgetB({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    return Consumer<Model>(
      builder: (context, data, child) {
        return Container(
          width: 100,
          height: 100,
          decoration:
              BoxDecoration(color: data.secondaryColor, shape: BoxShape.circle),
        );
      },
      child: null, // there is no big child.
    );
  }
}
