import 'buttonfuntionality.dart';

import 'functionality.dart';

import 'package:flutter/cupertino.dart';

import 'package:flutter/material.dart';

class Calculator extends StatefulWidget {
  @override
  _CalculatorState createState() => _CalculatorState();
}

class _CalculatorState extends State<Calculator> {
  var values = Evaluate();
  Widget key(val){
    return FloatingActionButton(
      onPressed: (){
        setState(() {
          onclick(val);
        });
      },
      child: Text(
        '$val',
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
    );
  }
  // ignore: non_constant_identifier_names
  Widget functionality_key(val){
    return FloatingActionButton(
      onPressed: (){
        setState(() {
          onOperatorClick(val);
          buff = 0;
        });
      },
      child: Text(
        '$val',
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
    );
  }
  Widget equalityKey(val){
    return FloatingActionButton(
      onPressed: (){
        setState(() {
          print(values.res);
          finalClick();
        });
      },
      child: Text(
        '$val',
        style: TextStyle(
          fontSize: 20.0,
        ),
      ),
    );
  }

  Widget numbers(val1, val2, val3, val4){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        key(val1),
        key(val2),
        key(val3),
        functionality_key(val4),
      ],
    );
  }
  Widget lastRow(){
    return Row(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        key(0),
        equalityKey('='),
        functionality_key('/'),
      ],
    );
  }
  Widget dial(){
    return Column(
      mainAxisAlignment: MainAxisAlignment.spaceEvenly,
      children: <Widget>[
        Container(
          margin: EdgeInsets.all(125.0),
          padding: EdgeInsets.all(30.0),
          child: Text(
            '$values.res',
          ),
        ),
        numbers(1, 2, 3, '+'),
        numbers(4, 5, 6, '-'),
        numbers(7, 8, 9, '*'),
        lastRow(),
      ],
    );
  }
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: dial(),
    );
  }
}
