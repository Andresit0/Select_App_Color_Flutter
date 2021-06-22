import 'package:flutter/material.dart';
import '../main.dart';
import 'colors.dart';

class ListBtnsAppColors extends StatelessWidget {
  String colorApp(Color color) {
    String strColor = '';
    if (color == Colors.pink) {
      strColor = 'pink';
    } else if (color == Colors.orange) {
      strColor = 'orange';
    } else if (color == Colors.yellow) {
      strColor = 'yellow';
    } else if (color == Colors.blue) {
      strColor = 'blue';
    } else if (color == Colors.red) {
      strColor = 'red';
    } else if (color == Colors.green) {
      strColor = 'green';
    } else if (color == Colors.cyan) {
      strColor = 'cyan';
    } else if (color == Colors.purple) {
      strColor = 'purple';
    } else if (color == Colors.grey) {
      strColor = 'grey';
    } else if (color == colorBlack) {
      strColor = 'black';
    }
    return strColor;
  }

  Widget buttonToChangeColor(MaterialColor newColor) {
    return IconButton(
      iconSize: 200,
      icon: Icon(
        Icons.color_lens,
        color: newColor,
      ),
      onPressed: () {
        isLightTheme.add(newColor);
        colorApp(newColor);
      },
    );
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      child: ListView(
        scrollDirection: Axis.horizontal,
        children: [
          buttonToChangeColor(Colors.pink),
          buttonToChangeColor(Colors.orange),
          buttonToChangeColor(Colors.yellow),
          buttonToChangeColor(Colors.blue),
          buttonToChangeColor(Colors.red),
          buttonToChangeColor(Colors.green),
          buttonToChangeColor(Colors.cyan),
          buttonToChangeColor(Colors.purple),
          buttonToChangeColor(Colors.grey),
          buttonToChangeColor(colorBlack),
        ],
      ),
    );
  }
}
