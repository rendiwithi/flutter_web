import 'package:flutter/material.dart';
import 'package:web_flutter/locator.dart';
import 'package:web_flutter/views/layout_template/layout_template.dart';

void main() {
  setupLocator();
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  // This widget is the root of your application.
  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      theme: ThemeData(
        primarySwatch: Colors.blue,
        textTheme: Theme.of(context).textTheme.apply(
          fontFamily: 'Open Sans'
        )
      ),
      home: LayoutTemplate(),
    );
  }
}
