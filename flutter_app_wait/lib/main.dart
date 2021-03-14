import 'package:flutter/material.dart';
import 'package:flutter_app_wait/src/waiting_page.dart';

void main() => runApp(MyApp());

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Waiting Room',theme :ThemeData(
      appBarTheme: AppBarTheme(
        color: Colors.deepOrange,
      ),
    ),
      home:Waitingpage(),
    );
  }

}

