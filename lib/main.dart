import 'package:flutter/material.dart';
import 'authentication.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Campus Transport App',
      theme: ThemeData(
        primarySwatch: Colors.blue,
      ),
      home: AuthenticationPage(),
    );
  }
}
