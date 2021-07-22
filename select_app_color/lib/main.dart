import 'package:flutter/material.dart';
import 'clr.dart' as color;
import 'listBtnsAppColors.dart' as btnListColor;

void main() {
  runApp(MyApp());
}

class MyApp extends StatelessWidget {
  @override
  Widget build(BuildContext context) {
    return StreamBuilder<MaterialColor>(
        initialData: Colors.blue,
        stream: color.colorAppStream.stream,
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
      body: btnListColor.listColorButton(),
    );
  }
}
