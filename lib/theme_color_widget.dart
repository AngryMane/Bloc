import 'package:flutter/material.dart';
import 'provider.dart';

class ThemeColorWidget extends StatelessWidget {
  ThemeColorWidget({Key key}) : super(key: key);

  @override
  Widget build(BuildContext context) {
    final bloc = Provider.of(context).bloc;

    AsyncWidgetBuilder<bool> builder =
        (BuildContext context, AsyncSnapshot<bool> snapshot) {
      return Container(
        width: 100,
        height: 100,
        child: Text(
          snapshot.hasData
              ? (snapshot.data) ? ('DarkMode') : ('NomalMode')
              : ('0'),
        ),
      );
    };

    return GestureDetector(
      child: StreamBuilder<bool>(stream: bloc.onTheme, builder: builder),
      onTap: () {
        bloc.theme.add(true);
      },
    );
  }
}
