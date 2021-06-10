import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:flutter/material.dart';
import 'package:font_awesome_flutter/font_awesome_flutter.dart';


class Login extends StatefulWidget {
  @override
  _LoginState createState() => _LoginState();
}

class _LoginState extends State<Login> {
  AnimationController controller;
  TextEditingController _controller = new TextEditingController();
  BorderRadiusGeometry _bR = BorderRadius.circular(8);
/*
 firebase

*/
  Firestore db = Firestore.instance;

  final FocusNode _codigoFocus = FocusNode();

  int _totstar = 0;

  bool _s1 = false;
  bool _s2 = false;
  bool _s3 = false;
  bool _st1 = false;
  bool _st2 = false;
  bool _st3 = false;
  bool _st4 = false;
//
  //
  void _iniciaDB () {
}


  @override
  Widget build(BuildContext context) {
    return Scaffold(
        appBar: AppBar(
          backgroundColor: Colors.blueAccent,
          //backgroundColor: Color(0xff308e1c),
          title: Text('Wop3 - Desenvolvimento Emocional e Vocacional v1_04', textAlign: TextAlign.center,
              style: TextStyle(fontSize: 14.0, fontWeight: FontWeight.bold)),
        ),
        body: SingleChildScrollView(
            child: Container(
                padding: EdgeInsets.all(20),
                child: Column(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Padding(
                        padding: EdgeInsets.only(top: 6),
                        child: Text(
                          " CÓDIGO ",
                          style: TextStyle(
                            fontSize: 50,
                            fontWeight: FontWeight.bold,
                          ),
                        ),
                      ),
                      Padding(
                          padding: EdgeInsets.only(top: 20),
                          child: AnimatedContainer(
                              padding: EdgeInsets.only(top: 25),
                              width: 240.0,
                              height: 120.0,
                              decoration: BoxDecoration(
                                border:
                                Border.all(color: Colors.blue, width: 3),
                                color: _s1 ? Colors.white : Colors.white,
                                borderRadius: _bR,
                              ),
                              alignment: AlignmentDirectional.center,
                              duration: Duration(seconds: 1),
                              curve: Curves.fastOutSlowIn,
                              child: TextField(
                                  controller: _controller,
                                  onChanged: (text) {
                                    if (text.length == 6) {
                                      _codigoFocus.unfocus();
                                      setState(() {
                                        _s2 = true;
                                      });
                                    }
                                    else {
                                      setState(() {
                                        _s2 = false;
                                      });
                                    }
                                  },
                                  //  autofocus: true,
                                  focusNode: _codigoFocus,
                                  cursorColor: Colors.blue,
                                  keyboardType: TextInputType.number,
                                  textInputAction: TextInputAction.next,
                                  maxLength: 6,
                                  maxLengthEnforced: true,
                                  textAlign: TextAlign.center,
                                  showCursor: false,
                                  style: TextStyle(
                                    fontSize: 50,
                                    color: Colors.blue,
                                  )))),
                      Padding(
                          padding: EdgeInsets.only(top: 35),
                          child: Row(
                            mainAxisAlignment: MainAxisAlignment.center,
                            children: <Widget>[
                              Padding(
                                  padding: EdgeInsets.all(20),
                                  child: _st1
                                      ? Icon(FontAwesomeIcons.solidStar,
                                      size: _s2 ? 50.0 : 0.0,
                                      color: Colors.blueAccent)
                                      : Icon(
                                    FontAwesomeIcons.star,
                                    size: _s2 ? 50.0 : 0.0,
                                    color: Colors.blueAccent,
                                  )),
                              Padding(
                                  padding: EdgeInsets.all(20),
                                  child: _st2
                                      ? Icon(FontAwesomeIcons.solidStar,
                                      size: _s2 ? 50.0 : 0.0,
                                      color: Colors.blueAccent)
                                      : Icon(
                                    FontAwesomeIcons.star,
                                    size: _s2 ? 50.0 : 0.0,
                                    color: Colors.blueAccent,
                                  )),
                              Padding(
                                  padding: EdgeInsets.all(20),
                                  child: _st3
                                      ? Icon(FontAwesomeIcons.solidStar,
                                      size: _s2 ? 50.0 : 0.0,
                                      color: Colors.blueAccent)
                                      : Icon(
                                    FontAwesomeIcons.star,
                                    size: _s2 ? 50.0 : 0.0,
                                    color: Colors.blueAccent,
                                  )),
                              Padding(
                                  padding: EdgeInsets.all(20),
                                  child: _st4
                                      ? Icon(FontAwesomeIcons.solidStar,
                                      size: _s2 ? 50.0 : 0.0,
                                      color: Colors.blueAccent)
                                      : Icon(
                                    FontAwesomeIcons.star,
                                    size: _s2 ? 50.0 : 0.0,
                                    color: Colors.blueAccent,
                                  )),
                            ],
                          )),
                      Padding(
                          padding: EdgeInsets.only(top: 35),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                GestureDetector(
                                    onTap: () {
                                      if (_totstar == 0) {
                                      setState(() {
                                      _st1 = true;
                                      _totstar ++;
                                      });
                                      } else if (_totstar == 1)
                                      {
                                        setState(() {
                                          _st2 = true;
                                          _totstar ++;
                                        });
                                      }
                                      else if (_totstar == 2)
                                      {
                                        setState(() {
                                          _st3 = true;
                                          _totstar ++;
                                        });
                                      }
                                      else if (_totstar == 3)
                                      {
                                        setState(() {
                                          _st4 = true;
                                          _totstar ++;
                                          _s3 = true;
                                        });
                                      }
                                    },
                                    child: AnimatedContainer(
                                        padding: EdgeInsets.all(5),
                                        width: _s2 ? 100.0 : 0.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: _s1
                                              ? Colors.yellowAccent
                                              : Colors.blueAccent,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child: Text(
                                          "0 ou 5",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ))),
                                GestureDetector(
                                    onTap: () {
                                      if (_totstar == 0) {
                                        setState(() {
                                          _st1 = true;
                                          _totstar ++;
                                        });
                                      } else if (_totstar == 1)
                                      {
                                        setState(() {
                                          _st2 = true;
                                          _totstar ++;
                                        });
                                      }
                                      else if (_totstar == 2)
                                      {
                                        setState(() {
                                          _st3 = true;
                                          _totstar ++;
                                        });
                                      }
                                      else if (_totstar == 3)
                                      {
                                        setState(() {
                                          _st4 = true;
                                          _totstar ++;
                                          _s3 = true;
                                        });
                                      }
                                    },
                                    child: AnimatedContainer(
                                        padding: EdgeInsets.all(5),
                                        width: _s2 ? 100.0 : 0.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: _s1
                                              ? Colors.yellowAccent
                                              : Colors.blueAccent,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child: Text(
                                          "1 ou 8",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ))),
                                GestureDetector(
                                    onTap: () {
                                      if (_totstar == 0) {
                                        setState(() {
                                          _st1 = true;
                                          _totstar ++;
                                        });
                                      } else if (_totstar == 1)
                                      {
                                        setState(() {
                                          _st2 = true;
                                          _totstar ++;
                                        });
                                      }
                                      else if (_totstar == 2)
                                      {
                                        setState(() {
                                          _st3 = true;
                                          _totstar ++;
                                        });
                                      }
                                      else if (_totstar == 3)
                                      {
                                        setState(() {
                                          _st4 = true;
                                          _totstar ++;
                                          _s3 = true;
                                        });
                                      }
                                    },
                                    child: AnimatedContainer(
                                        padding: EdgeInsets.all(5),
                                        width: _s2 ? 100.0 : 0.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: _s1
                                              ? Colors.yellowAccent
                                              : Colors.blueAccent,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child: Text(
                                          "2 ou 5",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        )))
                              ])),
                      Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                GestureDetector(
                                    onTap: () {
                                      if (_totstar == 0) {
                                        setState(() {
                                          _st1 = true;
                                          _totstar ++;
                                        });
                                      } else if (_totstar == 1)
                                      {
                                        setState(() {
                                          _st2 = true;
                                          _totstar ++;
                                        });
                                      }
                                      else if (_totstar == 2)
                                      {
                                        setState(() {
                                          _st3 = true;
                                          _totstar ++;
                                        });
                                      }
                                      else if (_totstar == 3)
                                      {
                                        setState(() {
                                          _st4 = true;
                                          _totstar ++;
                                          _s3 = true;
                                        });
                                      }
                                    },
                                    child: AnimatedContainer(
                                        padding: EdgeInsets.all(5),
                                        width: _s2 ? 100.0 : 0.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: _s1
                                              ? Colors.yellowAccent
                                              : Colors.blueAccent,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child: Text(
                                          "3 ou 6",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ))),
                                GestureDetector(
                                    onTap: () {
                                      if (_totstar == 0) {
                                        setState(() {
                                          _st1 = true;
                                          _totstar ++;
                                          _s3 = false;
                                        });
                                      } else if (_totstar == 1)
                                      {
                                        setState(() {
                                          _st2 = true;
                                          _totstar ++;
                                          _s3 = false;
                                        });
                                      }
                                      else if (_totstar == 2)
                                      {
                                        setState(() {
                                          _st3 = true;
                                          _totstar ++;
                                          _s3 = false;
                                        });
                                      }
                                      else if (_totstar == 3)
                                      {
                                        setState(() {
                                          _st4 = true;
                                          _totstar ++;
                                          _s3 = true;
                                        });
                                      }
                                    },
                                    child: AnimatedContainer(
                                        padding: EdgeInsets.all(5),
                                        width: _s2 ? 100.0 : 0.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: _s1
                                              ? Colors.yellowAccent
                                              : Colors.blueAccent,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child: Text(
                                          "4 ou 9",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        ))),
                                GestureDetector(
                                    onTap: () {
                                      _s3 = false;
                                      if (_totstar ==1) {
                                        setState(() {
                                          _st1 = false;
                                          _totstar = 0;
                                          _s3 = false;
                                        });
                                      } else if (_totstar == 2)
                                      {
                                        setState(() {
                                          _st2 = false;
                                          _totstar = 1;
                                          _s3 = false;
                                        });
                                      }
                                      else if (_totstar == 3)
                                      {
                                        setState(() {
                                          _st3 = false;
                                          _totstar = 2;
                                          _s3 = false;
                                        });
                                      }
                                      else if (_totstar == 4)
                                      {
                                        setState(() {
                                          _st4 = false;
                                          _totstar = 3;
                                          _s3 = false;
                                        });
                                      }
                                    },
                                    child: AnimatedContainer(
                                        padding: EdgeInsets.all(10),
                                        width: _s2 ? 100.0 : 0.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: _s1
                                              ? Colors.yellowAccent
                                              : Colors.blueAccent,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child: Icon(FontAwesomeIcons.backspace,
                                            size: _s2 ? 30.0 : 0.0,
                                            color: Colors.black)))
                              ])),
                      Padding(
                          padding: EdgeInsets.only(top: 15),
                          child: Row(
                              mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                              children: <Widget>[
                                GestureDetector(
                                    onTap: () {
                                      _iniciaDB();
                                      Navigator.pushReplacementNamed(context, "/Home");
                                    },
                                    child: AnimatedContainer(
                                        padding: EdgeInsets.all(10),
                                        width: _s3 ? 350.0 : 0.0,
                                        height: 50.0,
                                        decoration: BoxDecoration(
                                          color: _s1
                                              ? Colors.yellowAccent
                                              : Colors.blueAccent,
                                          borderRadius: _bR,
                                        ),
                                        alignment: Alignment.center,
                                        duration: Duration(seconds: 3),
                                        curve: Curves.fastLinearToSlowEaseIn,
                                        child: Text(
                                          "ACESSAR",
                                          style: TextStyle(
                                              fontSize: 20,
                                              color: Colors.black,
                                              fontWeight: FontWeight.bold),
                                        )))
                              ]))
                    ]))));
  }
}
