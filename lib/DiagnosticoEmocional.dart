import 'package:flutter/material.dart';
import 'Home.dart';
import 'testes/P01.dart';

class Auto_Estima extends StatefulWidget {
  String _codAluno;
  Auto_Estima(this._codAluno);
  @override
  _Auto_EstimaState createState() => _Auto_EstimaState();
}

class _Auto_EstimaState extends State<Auto_Estima> {
  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Container(
        padding: EdgeInsets.only(top: 60, left: 40, right: 40),
        color: Colors.white,
        child: ListView(
          children: <Widget>[
            SizedBox(
              width: 30,
              height: 30,
              child: Image.asset("images/logo.png"),
            ),
            SizedBox(
              height: 20,
            ),
            SizedBox(
              width: 128,
              height: 280,
              child:SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                      children: <Widget>[
                        Text('Este é um instrumento de Verificação Emocional.\n\n Responda de forma mais sincera possível, responda a primeira coisa que vier na sua mente, não pense muito.\n\n  Após responder, você terá acesso aos resultados e então poderemos auxiliá-lo no melhor caminho para o seu desenvolvimento emocional.\n\n',
                          style: TextStyle(
                            fontSize: 17.0,
                            fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                        )
                        ,]
                  )
              ),
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
                        MaterialPageRoute(
                            builder: (context) => P01(widget._codAluno)));
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
                    Navigator.push(context,
                        MaterialPageRoute(
                            builder: (context) =>
                              Home(widget._codAluno)));
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
