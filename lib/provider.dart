import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget {
  Provider({Key key, Widget child}) : super(key: key, child: child);

  final _bloc = Bloc();
  Bloc get bloc => _bloc;

  @override
  bool updateShouldNotify(_) => true;

  static Provider of(BuildContext context) {
    return context.dependOnInheritedWidgetOfExactType<Provider>();
  }
}
