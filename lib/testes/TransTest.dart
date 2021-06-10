import 'dart:math';

import 'package:flutter/material.dart';

class TransWeb extends StatefulWidget {
  @override
  _TransWebState createState() => _TransWebState();
}

class _TransWebState extends State<TransWeb> {

  double x = 0;
  double y = 0;
  double z = 0;

  @override
  Widget build(BuildContext context) {
    return new Scaffold(
      appBar: new AppBar(),
      body: new Center(
        child: new Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children: <Widget>[
            new Container(
                alignment: new FractionalOffset(0.5, 0.5),
                height: 144.0,
                width: 360.0,
                decoration: new BoxDecoration(
                    border: new Border.all(color: new Color(0xFF9E9E9E))
                ),
                child: new Transform(
                  alignment: FractionalOffset.center,
                  transform: new Matrix4.identity()..scale(1.0, 0.05),
                  child: new Container(
                    decoration: new BoxDecoration(
                      color: new Color(0xFF005CA9),
                    ),
                  ),
                )
            )
          ],
        ),
      ),
    );
  }
}