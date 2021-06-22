import 'package:flutter/material.dart';
import 'dart:async';

import 'listBtnsAppColors.dart';

void main() {
  runApp(MyApp());
}

StreamController<MaterialColor> isLightTheme = StreamController();

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MaterialColor>(
        initialData: Colors.blue,
        stream: isLightTheme.stream,
        builder: (context, snapshot) {
          return MaterialApp(
            title: 'FACTEC',
            theme: ThemeData(
              primarySwatch: snapshot.data,
              visualDensity: VisualDensity.adaptivePlatformDensity,
            ),
            home: MyHomePage(title: 'Flutter Change Color'),
          );
        });
  }
}

class MyHomePage extends StatefulWidget {
  MyHomePage({Key? key, required this.title}) : super(key: key);
  final String title;
  @override
  _MyHomePageState createState() => _MyHomePageState();
}

class _MyHomePageState extends State<MyHomePage> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: ListBtnsAppColors(),
    );
  }
}
