import 'package:flutter/material.dart';
import './provider.dart';

class WidgetB extends StatelessWidget {
  WidgetB({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context).bloc;
    return StreamBuilder<Color>(
        stream: bloc.onSecondaryColor,
        builder: (BuildContext context, AsyncSnapshot<Color> snapshot) {
          return Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: !snapshot.hasData ? Colors.black : snapshot.data,
                shape: BoxShape.circle),
          );
        });
  }
}
