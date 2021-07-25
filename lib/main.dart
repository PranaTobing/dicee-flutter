import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      title: 'dicee app',
      home: Scaffold(
        backgroundColor: Colors.amber,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.amber,
        ),
        body: DicePage(),
      ),
    ),
  );
}

class DicePage extends StatefulWidget {
  const DicePage({Key key}) : super(key: key);

  @override
  _DicePageState createState() => _DicePageState();
}

class _DicePageState extends State<DicePage> {
  int daduKiri = 4;
  int daduKanan = 1;
  void _changeDice() {
    setState(() {
      daduKiri = Random().nextInt(6) + 1;
      daduKanan = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Center(
      child: Row(
        children: [
          Expanded(
            child: FlatButton(
              onPressed: _changeDice,
              child: Image.asset('images/dice$daduKiri.png'),
            ),
          ),
          Expanded(
            child: FlatButton(
              onPressed: _changeDice,
              child: Image.asset('images/dice$daduKanan.png'),
            ),
          ),
        ],
      ),
    );
  }
}
