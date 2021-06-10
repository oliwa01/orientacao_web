import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';

class BoxResultado extends StatefulWidget {
  @override
  _BoxResultadoState createState() => _BoxResultadoState();
}

class _BoxResultadoState extends State<BoxResultado> {
  BoxDecoration myBoxDecoration() {
    return BoxDecoration(
      color: Colors.orange,
      border: Border.all(),
    );
  }
  double fontnumber = 16.0;
  int v1 = 20;
  Color _red = Colors.red;
  Color _orange = Colors.deepOrangeAccent;
  Color _yellow = Colors.yellow;
  Color _lime = Colors.lightGreenAccent;
  Color _green = Colors.green;
  Color _cv1 = Colors.red;

  @override
  Widget build(BuildContext context) {
    return Container(
      child: Container(
        width: 360,
        height: 170,
        child: Column(
          children: [
            SizedBox(
              width: 360,
              height: 30,
              child:
            Container(
                padding: EdgeInsets.only(top : 4),
              decoration: BoxDecoration(
                color: Colors.white,
                border: Border.all(),
              ),
              child: Text("Pontuação: "+ v1.toString(),
                style: TextStyle(
                  color: Colors.black,
                  fontSize: fontnumber,
                ),
                textAlign: TextAlign.center,
              )
              )
                ),
            SizedBox(
              width: 360,
              height: 60,child:
            Row(
              children: [
                Container(
                  width: 100,
                height: 60,
                  decoration: BoxDecoration(
                  color: (v1 < 5) ? _red : (v1 < 10) ? _orange : (v1 < 16) ? _yellow : (v1 < 19) ? _lime : _green,
                  border: Border.all(),
            ),
                    child: Text(
                      (v1 < 5) ? "I – Iniciando o Domínio do Tempo" :
                      (v1 < 10) ? "II – Aprimorando o Domínio do Tempo" :
                      (v1 < 16) ? "III – Domínio de Tempo Intermediáro" :
                      (v1 < 19) ? "IV – Domínio de Tempo Competente" : "V - Excelente—Mestre de Domínio de Tempo",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        )
                    )
                ),
                Container(
                  width: 260,
                  height: 60,
                  decoration: BoxDecoration(
                  color: Colors.white,
                  border: Border.all(),
                ),
                    child: Text(
                      (v1 < 5) ? "Você tem entendimento limitado em gerenciamento de tempo. Você tem muitas oportunidades de desenvolver suas habilidades." :
                      (v1 < 10) ? "Você tem entendimento aprimorado, mas ainda assim, limitado sbre gerenciamento de tempo. Desenvolver suas habilidades continua a ser su prioridade." :
                      (v1 < 16) ? "Você tem conhecimento básico e habilidades para gerenciamento de tempo. Algumas áreas ainda precisam evoluir." :
                      (v1 < 19) ? "Você tem um alto conhecimento e habilidades para gerenciar o tempo. Você está n caminho certo para se tornar um Mestre do Tempo." :
                      "Você é um mestre no Domínio do Tempo. Você está pronto pra compartilhar seu conhecimento e habilidades sobre o gerenciamento do tempo.",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 12,
                        )
                    )
                ),
                ],
            ),),
            SizedBox(
              width: 360,
              height: 20,child:
            Row(
              children: [
                Container(padding: EdgeInsets.only(top:2),
                    height: 20,
                  width: 72,
                  decoration: BoxDecoration(
                    color: Colors.red,
                    border: Border.all(),
                  ),
                    child: Text(" I ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        )
                    )
                ),
                Container(padding: EdgeInsets.only(top:2),
                  width: 72,height: 20,
                  decoration: BoxDecoration(
                    color: Colors.orange,
                    border: Border.all(),
                  ),
                    child: Text(" II ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        )
                    )
                ),
                Container(padding: EdgeInsets.only(top:2),
                  width: 72,height: 20,
                  decoration: BoxDecoration(
                    color: Colors.yellow,
                    border: Border.all(),
                  ),
                    child: Text(" III ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        )
                    )
                ),
                Container(padding: EdgeInsets.only(top:2),
                  width: 72,height: 20,
                  decoration: BoxDecoration(
                    color: Colors.lightGreenAccent,
                    border: Border.all(),
                  ),
                    child: Text(" IV ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        )
                    )
                ),
                Container(padding: EdgeInsets.only(top:2),
                  width: 72,height: 20,
                  decoration: BoxDecoration(
                    color: Colors.green,
                    border: Border.all(),
                  ),
                    child: Text(" V ",
                        textAlign: TextAlign.center,
                        style: TextStyle(
                          color: Colors.black,
                          fontSize: 15,
                        )
                    )
                ),

              ],
            ),),
            SizedBox(
              width: 360,
              height: 30,child:
            Row(
              children: [

                Container(padding: EdgeInsets.only(top:5),
                      width: 22.5,height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all()),
                    child: Text("5",textAlign: TextAlign.center,
                      style: TextStyle(
                        color : (v1 == 5) ? Colors.black : Colors.white30,
                        fontSize: fontnumber,
                      ),)
                ),
                Container(padding: EdgeInsets.only(top:5),
                      width: 22.5,height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all()),
                    child: Text("6",textAlign: TextAlign.center,
                      style: TextStyle(

                        color : (v1 == 6) ? Colors.black : Colors.white30,
                        fontSize: fontnumber,
                      ),)
                ),
                Container(padding: EdgeInsets.only(top:5),
                      width: 22.5,height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all()),
                    child: Text("7",textAlign: TextAlign.center,
                      style: TextStyle(

                        color : (v1 == 7) ? Colors.black : Colors.white30,
                        fontSize: fontnumber,
                      ),)
                ),
                Container(padding: EdgeInsets.only(top:5),
                      width: 22.5,height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all()),
                    child: Text("8",textAlign: TextAlign.center,
                      style: TextStyle(

                        color : (v1 == 8) ? Colors.black : Colors.white30,
                        fontSize: fontnumber,
                      ),)
                ),
                Container(padding: EdgeInsets.only(top:5),
                      width: 22.5,height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all()),
                    child: Text("9",textAlign: TextAlign.center,
                      style: TextStyle(

                        color : (v1 == 9) ? Colors.black : Colors.white30,
                        fontSize: fontnumber,
                      ),)
                ),
                Container(padding: EdgeInsets.only(top:5),
                      width: 22.5,height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all()),
                    child: Text("10",textAlign: TextAlign.center,
                      style: TextStyle(

                        color : (v1 == 10) ? Colors.black : Colors.white30,
                        fontSize: fontnumber,
                      ),)
                ),
                Container(padding: EdgeInsets.only(top:5),
                      width: 22.5,height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all()),
                    child: Text("11",textAlign: TextAlign.center,
                      style: TextStyle(

                        color : (v1 == 11) ? Colors.black : Colors.white30,
                        fontSize: fontnumber,
                      ),)
                ),
                Container(padding: EdgeInsets.only(top:5),
                      width: 22.5,height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all()),
                    child: Text("12",textAlign: TextAlign.center,
                      style: TextStyle(

                        color : (v1 == 12) ? Colors.black : Colors.white30,
                        fontSize: fontnumber,
                      ),)
                ),
                Container(padding: EdgeInsets.only(top:5),
                      width: 22.5,height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all()),
                    child: Text("13",textAlign: TextAlign.center,
                      style: TextStyle(

                        color : (v1 == 13) ? Colors.black : Colors.white30,
                        fontSize: fontnumber,
                      ),)
                ),
                Container(padding: EdgeInsets.only(top:5),
                      width: 22.5,height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all()),
                    child: Text("14",textAlign: TextAlign.center,
                      style: TextStyle(

                        color : (v1 == 14) ? Colors.black : Colors.white30,
                        fontSize: fontnumber,
                      ),)
                ),
                Container(padding: EdgeInsets.only(top:5),
                      width: 22.5,height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all()),
                    child: Text("15",textAlign: TextAlign.center,
                      style: TextStyle(

                        color : (v1 == 15) ? Colors.black : Colors.white30,
                        fontSize: fontnumber,
                      ),)
                ),
                Container(padding: EdgeInsets.only(top:5),
                      width: 22.5,height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all()),
                    child: Text("16",textAlign: TextAlign.center,
                      style: TextStyle(

                        color : (v1 == 16) ? Colors.black : Colors.white30,
                        fontSize: fontnumber,
                      ),)
                ),
                Container(padding: EdgeInsets.only(top:5),
                      width: 22.5,height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all()),
                    child: Text("17",textAlign: TextAlign.center,
                      style: TextStyle(

                        color : (v1 == 17) ? Colors.black : Colors.white30,
                        fontSize: fontnumber,
                      ),)
                ),
                Container(padding: EdgeInsets.only(top:5),
                      width: 22.5,height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all()),
                    child: Text("18",textAlign: TextAlign.center,
                      style: TextStyle(

                        color : (v1 == 18) ? Colors.black : Colors.white30,
                        fontSize: fontnumber,
                      ),)
                ),
                Container(padding: EdgeInsets.only(top:5),
                      width: 22.5,height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all()),
                    child: Text("19",textAlign: TextAlign.center,
                      style: TextStyle(

                        color : (v1 == 19) ? Colors.black : Colors.white30,
                        fontSize: fontnumber,
                      ),)
                ),
                Container(padding: EdgeInsets.only(top:5),
                      width: 22.5,height: 30,
                    decoration: BoxDecoration(
                        color: Colors.white,
                        border: Border.all()),
                    child: Text("20",textAlign: TextAlign.center,
                      style: TextStyle(

                        color : (v1 == 20) ? Colors.black : Colors.white30,
                        fontSize: fontnumber,
                      ),)
                )

              ],
            ),),
          ],
        )
      ),
    );
  }
}
