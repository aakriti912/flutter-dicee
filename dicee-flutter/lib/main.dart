import 'dart:math';
import 'package:flutter/material.dart';

void main() {
  return runApp(
    MaterialApp(
      home: Scaffold(
        backgroundColor: Colors.red,
        appBar: AppBar(
          title: Text('Dicee'),
          backgroundColor: Colors.red,
        ),
        //body: DicePage(),
      ),
    ),
  );
}
class Dicepage extends StatefulWidget {
  @override
  _DicepageState createState() => _DicepageState();
}

class _DicepageState extends State<Dicepage> {
  int leftDiceNumber = 1;
  int rightDirectionNumber=1;
  @override

  Widget build(BuildContext context) {

    return Row(
      children: <Widget>[
        Expanded(
          child:FlatButton(
            onPressed: (){
              setState(() {
                leftDiceNumber= Random().nextInt(6)+1;
              });

            },
            child: Image.asset('images/dice$leftDiceNumber.png'),
          ),
        ),
        Expanded(
          child:FlatButton(
            onPressed: (){
              setState(() {
                rightDirectionNumber= Random().nextInt(6)+1;
              });

            },
            child: Image.asset('images/dice$rightDirectionNumber.png'),
          ),
        ),
      ],
    );
  }
}

