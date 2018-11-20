import 'package:flutter/material.dart';
import 'package:login/login_screen.dart';
import 'provider.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return Provider(
      child: MaterialApp(
        title: 'Bloc',
        home: Scaffold(
          body: LoginScreen(),
        ),
      ),
    );
  }
}
