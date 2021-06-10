import 'package:flutter/material.dart';

import 'disc.dart';

class TelaDisc extends StatefulWidget {
  String _codAluno;
  TelaDisc(this._codAluno);

  @override
  _TelaDiscState createState() => _TelaDiscState();
}

class _TelaDiscState extends State<TelaDisc> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 60,
              height: 60,
              child: Image.asset("images/logo.png"),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 128,
              height: 400,
              child: SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(children: <Widget>[
                    Text(
                      'Este teste tem como objetivo demonstrar de forma clara e simples qual o seu perfil comportamental mais evidente.\n\n Apresentando seus comportamentos positivos, isto é, características que impulsionam a sua carreira, assim como possíveis comportamentos limitantes, que podem prejudicar na conquista de suas metas e objetivos.\n\n'
                      ' O mais interessante neste teste de autoconhecimento é fazer com que você continue com suas atitudes positivas que contribuem para os seus resultados, e tenha consciência dos comportamentos que podem lhe prejudicar. O teste será executado em duas partes.\n\n',

                      style: TextStyle(
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "Primeira Parte\n\n",
                      style: TextStyle(
                        fontSize: 25.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),

                    Text(
                      "Na primeira parte você irá escolher dentre os 28 grupos de palavras, qual palavra melhor se encaixa a sua característica pessoal. Por exemplo, no primeiro grupo temos as seguintes palavras:\n\n",
                      style: TextStyle(
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Container(
                      width: 160.0,
                      height: 40.0,
                      color: Colors.blue,
                      child: Center(
                        child: Text(
                          "Animado",
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 160.0,
                      height: 40.0,
                      color: Colors.orange,
                      child: Center(
                        child: Text(
                          "Aventureiro",
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 160.0,
                      height: 40.0,
                      color: Colors.green,
                      child: Center(
                        child: Text(
                          "Analítico",
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                    SizedBox(
                      height: 5,
                    ),
                    Container(
                      width: 160.0,
                      height: 40.0,
                      color: Colors.red,
                      child: Center(
                        child: Text(
                          "Adaptável",
                          style: TextStyle(
                            color: Colors.white,
                            decoration: TextDecoration.none,
                            fontSize: 15.0,
                          ),
                        ),
                      ),
                    ),
                    Text(
                      "\nCaso a palavra ANIMADO é sua principal característica neste grupo de palavras, você deve arrasta-la para o Box 'MAIS' , Caso a palavra AVENTUREIRO seja a caratetistica que menos se identifique com você, você arrastala para o box 'MENOS'. Note que você poderá escolher apenas uma palavra para cada opção 'MAIS' e 'MENOS'.\n\n",
                      style: TextStyle(
                        fontSize: 19.0,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),
                    Text(
                      "\nCuidado:\n  Não escolha o que você acha ser certo ou errado, opte pelo que você realmente é.",
                      style: TextStyle(
                        fontSize: 22.0,
                        color: Colors.red,
                        fontWeight: FontWeight.bold,
                      ),
                      textAlign: TextAlign.center,
                    ),

                  ])),
            ),
            SizedBox(
              height: 40,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                gradient: LinearGradient(
                  begin: Alignment.topLeft,
                  end: Alignment.bottomRight,
                  stops: [0.3, 1],
                  colors: [
                    Color(0xFFF58524),
                    Color(0XFFF92B7F),
                  ],
                ),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Container(
                        child: SizedBox(
                          child: Image.asset("images/logo.png"),
                          height: 28,
                          width: 28,
                        ),
                      ),
                      Text(
                        "  Iniciar Teste",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.center,
                      ),
                    ],
                  ),
                  onPressed: () {
                    Navigator.push(context,
                        MaterialPageRoute(builder: (context) => Disc(widget._codAluno)));
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
            Container(
              height: 60,
              alignment: Alignment.centerLeft,
              decoration: BoxDecoration(
                color: Color(0xFF3C5A99),
                borderRadius: BorderRadius.all(
                  Radius.circular(5),
                ),
              ),
              child: SizedBox.expand(
                child: FlatButton(
                  child: Row(
                    mainAxisAlignment: MainAxisAlignment.spaceEvenly,
                    children: <Widget>[
                      Text(
                        "Voltar Menu ",
                        style: TextStyle(
                          fontWeight: FontWeight.bold,
                          color: Colors.white,
                          fontSize: 20,
                        ),
                        textAlign: TextAlign.left,
                      )
                    ],
                  ),
                  onPressed: () {
                    Navigator.pushNamed(context, "/Home");
                  },
                ),
              ),
            ),
            SizedBox(
              height: 10,
            ),
          ],
        ),
      ),
    );
  }
}
