import 'package:flutter/material.dart';
import 'package:flutter_bee_challenge/src/ui/pages/code.page.dart';
import 'package:flutter_bee_challenge/src/ui/pages/number_request.page.dart';
import 'package:flutter_bee_challenge/src/ui/pages/splash.page.dart';

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      title: 'Flutter Bee Challenge',
      theme: ThemeData(
        primarySwatch: Colors.amber,
        visualDensity: VisualDensity.adaptivePlatformDensity,
      ),
      home: CodePage(),
    );
  }
}
