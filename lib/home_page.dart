import 'dart:ui';

import 'package:flutter/material.dart';

class HomePage extends StatefulWidget {
  // const HomePage({ Key? key }) : super(key: key);

  @override
  State createState() => new HomePageState();
}

class HomePageState extends State<HomePage> {
var num1 = 0, num2 =0 , sum = 0;

final TextEditingController t1 = new TextEditingController(text: "0");
final TextEditingController t2 = new TextEditingController(text: "0");

void doAdd(){
  setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    sum = num1 + num2;
  });
}
void doSub(){
  setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    sum = num1 - num2;
  });
}
void doMul(){
  setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    sum = num1 * num2;
  });
}
void doDiv(){
  setState(() {
    num1 = int.parse(t1.text);
    num2 = int.parse(t2.text);
    sum = num1 ~/ num2;
  });
}
  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(
        title: new Text("Calculator",
        style: TextStyle(
          fontWeight: FontWeight.bold,
          fontSize: 25.0,
          ),
        ),
      ),
      body: new Container(
        padding: EdgeInsets.all(40.0),
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Text(
              "Output: $sum",
              style: TextStyle(
                fontSize: 25.0,
                fontWeight: FontWeight.bold,
              ),
            ),
            new TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              decoration: new InputDecoration(hintText: "Enter Number 1"),
              controller: t1,
            ),
            new TextField(
              keyboardType: TextInputType.number,
              style: TextStyle(
                fontSize: 25,
                fontWeight: FontWeight.bold,
              ),
              decoration: new InputDecoration(hintText: "Enter Number 2"),
              controller: t2,
            ),
            new Padding(
              padding: EdgeInsets.only(top: 20.0),
            ),
            new Row(
              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
              children: <Widget>[
                new ElevatedButton(
                  child: new Text("+",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: doAdd,
                ),
                new ElevatedButton(
                  child: new Text("-",
                    style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: doSub,
                ),
                new ElevatedButton(
                  child: new Text("x",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: doMul,
                ),
                new ElevatedButton(
                  child: new Text("/",
                  style: TextStyle(
                      fontSize: 25.0,
                      fontWeight: FontWeight.bold,
                    ),
                  ),
                  onPressed: doDiv,
                ),
              ],
            )
          ],
        ),
      ),
    );
  }
}
