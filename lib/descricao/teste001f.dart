import 'package:flutter/material.dart';



import '../Home.dart';

class teste001f extends StatefulWidget {
  String _codAluno;
  teste001f(this._codAluno);
  @override
  _teste001fState createState() => _teste001fState();
}

class _teste001fState extends State<teste001f> {
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
                        Text('Parabéns !!! Você finalizou o seu teste.\n\nO Resultado sera encaminhado para o seu Facilitador da Orientação Vocacional. \n\n  Aguarde o contato para o agendamento do seu atendimento ONLINE.\n\n',
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
