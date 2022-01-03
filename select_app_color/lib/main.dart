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
            title: 'Color',
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
  double iconSize = 100;
  bool activateColor = false;

  Widget colorButton(double height) {
    return Container(
      height: height,
      child: Row(
        children: [
          activateColor
              ? Expanded(child: btnListColor.listColorButton(iconSize))
              : Expanded(child: Container()),
          Container(
            color: Colors.transparent,
            alignment: Alignment.centerRight,
            child: IconButton(
                splashRadius: 1,
                iconSize: iconSize,
                onPressed: () {
                  setState(() {
                    activateColor = !activateColor;
                  });
                },
                icon: Icon(
                  activateColor ? Icons.cancel_outlined : Icons.color_lens,
                  size: iconSize,
                  color: Theme.of(context).colorScheme.secondary,
                )),
          ),
        ],
      ),
    );
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text(widget.title),
      ),
      body: Column(
        children: [
          Container(height: 200, child: btnListColor.listColorButton(200)),
          Padding(padding: EdgeInsets.only(top: 30)),
          colorButton(100),
        ],
      ),
    );
  }
}
