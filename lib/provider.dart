import 'package:flutter/material.dart';
import 'bloc.dart';

class Provider extends InheritedWidget {

  final bloc = Bloc();

  Provider({Key key, Widget child}): super(key: key, child: child);

  @override
  bool updateShouldNotify(InheritedWidget oldWidget) {
    // TODO: implement updateShouldNotify
    return true;
  }

  static Bloc of(BuildContext context) {
    // find parent widget until we find a parent widget which is a `Provider` class
    return (context.inheritFromWidgetOfExactType(Provider) as Provider).bloc;
  }
}