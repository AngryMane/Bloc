import 'package:flutter/material.dart';
import './provider.dart';

class WidgetA extends StatelessWidget {
  WidgetA({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context).bloc;
    return StreamBuilder<Color>(
        stream: bloc.onPrimaryColor,
        builder: (BuildContext context, AsyncSnapshot<Color> snapshot) {
          return Container(
            width: 100,
            height: 100,
            decoration: BoxDecoration(
                color: !snapshot.hasData ? Colors.green : snapshot.data,
                shape: BoxShape.circle),
          );
        });
  }
}
