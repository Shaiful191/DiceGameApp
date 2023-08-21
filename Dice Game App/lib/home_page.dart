import 'dart:math';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  @override
  _HomePageState createState() => _HomePageState();
}

class _HomePageState extends State<HomePage> {

  int leftimg = 1;
  int rightimg = 6;
  void changeDiceFace() {
    setState(() {
      rightimg = Random().nextInt(6) + 1;
      leftimg = Random().nextInt(6) + 1;
    });
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      appBar: AppBar(
        title: Text('DiceGame'),
        centerTitle: true,
        backgroundColor: Colors.deepOrange,
      ),
      body: Container(
        height: 600,
        color: Colors.deepOrange,
        child: Row(
          children: [
            Expanded(
              //aita image ke screen er size onujai show kore.
              flex:
                  1, //aita row er mode baki gular sathe aitar rationo show korve.bydefault 1 tahke.
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange,
                ),
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset('images/dice$leftimg.png'),
              ),
            ),
            Expanded(
              flex: 1,
              child: ElevatedButton(
                style: ElevatedButton.styleFrom(
                  primary: Colors.deepOrange,
                ),
                onPressed: () {
                  changeDiceFace();
                },
                child: Image.asset('images/dice$rightimg.png'),
              ),
            ),
          ],
        ),
      ),
    );
  }
}
