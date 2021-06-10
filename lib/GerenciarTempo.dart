import 'package:flutter/material.dart';
import 'Home.dart';
import 'testes/P01.dart';
import 'testes/TM.dart';

class GerenciarTempo extends StatefulWidget {
  String _codAluno;
  GerenciarTempo(this._codAluno);
  @override
  _GerenciarTempoState createState() => _GerenciarTempoState();
}

class _GerenciarTempoState extends State<GerenciarTempo> {
  String textoTM = "Todos nós enfrentamos um dilema diário:\n muito a se fazer e pouco tempo para realizar."+
      "Gerenciamento de tempo consiste em como resolver esse dilema. Tempo, e não as atividades, é o fator limitador. Devemos tomar decisões difíceis sobre o que fazer e o que não fazer."+
  "Gerenciamento de tempo é, na verdade, um auto gerenciamento. Apesar do fato de que o tempo não é adaptável, as pessoas são. Gerenciar o tempo nada mais é do que adaptar a nós mesmos à sua passagem de maneira satisfatória.\n Isto significa auto gerenciamento. Se o tempo parece estar fora do nosso controle, é porque nós estamos fora de controle. Para nos trazer de volta ao controle, precisamos aprender hábitos novos e mais apropriados."+
  "Hábitos são a chave para um bom gerenciamento de tempo. Bons resultados são consequência de bons hábitos; maus resultados são consequência de maus hábitos.\n O ponto importantes a ser lembrado, porém, é que hábitos são comportamentos aprendidos. Eles podem ser mudados. Seus hábitos podem controlar o seu destino, mas você pode controlar seus hábitos. O primeiro passo pode ser mudar a sua forma de pensamento."+
  "Henry Ford disse: \n\n'Quer você pense que consegue ou não, você está certo.'\n\n O que você pensa tem uma importância vital. Você, geralmente, age de maneira consistente com aquilo em que acredita. \nPara se tornar mestre do seu tempo, você deve primeiro acreditar que consegue dominá-lo. Para poder mudar seus hábitos, você deve também identificá-los. E é sobre isso que fala o Perfil de Domínio do Tempo*. Através das próximas páginas, você irá acessar os seus comportamentos de gerenciamento de tempo habituais. Enquanto lê, você tornar-se-á mais ciente sobre o que são os hábitos para gerenciamento do tempo e se eles irão ajudar ou dificultar as coisas para você.\n"+
 "\n"+
  "\nINSTRUÇÕES\n"+
  "1.	Serão 60 perguntas onde você verá afirmações sobre comportamentos específicos. \n"+
  "2.	Leia cada uma das afirmações e considere como como elas se aplicam à você. Por favor, leia cada afirmação cuidadosamente e pense sobre a sua resposta. Algumas afirmações são formuladas de maneira positiva e outras, de maneira negativa. Por favor, esteja certo de que sua resposta é aquela que melhor representa seu comportamento habitual e sua situação em particular.\n\n"+
  "3.	Seguinte à cada pergunta, estão quatro opções de resposta: Concordo Totalmente, Concordo Parcialmente, Descordo Parcialmente e Descordo Totalmente. Selecione a resposta que indica o quanto você concorda ou descorda com cada afirmação, de acordo com a intensidade a que tal situação se aplica a você.\n\n"+
  "4.	Depois de responder TODAS as questões, você será encaminhado para uma tela com os resultados de seu teste.\n\n"+
  "5.	Aqui vamos nós. Trabalhe o mais rápido que conseguir. Sua primeira resposta geralmente é a mais precisa.\n\n";


  @override
  Widget build(BuildContext context) {
    final widthlua = MediaQuery.of(context).size.width;
    final heightlua = MediaQuery.of(context).size.height;

    double  font_adj =  (heightlua > 1600) ? 14 :
    (heightlua > 1500)  ? 14 :
    (heightlua > 1400)  ? 14 :
    (heightlua > 1300)  ? 13 :
    (heightlua > 1200)  ? 14 :
    (heightlua > 1100)  ? 15 :
    (heightlua > 1000)  ? 15 :
    (heightlua > 900)  ? 14 :
    (heightlua > 800)  ? 14:
    (heightlua > 700)  ? 15 :
    (heightlua > 600)  ? 15 :
    (heightlua > 500)  ? 14 : 14 ;

    double  fontpergunta =  (widthlua > 1600) ? widthlua / 37:
    (widthlua > 1500)  ? widthlua / 36 :
    (widthlua > 1400)  ? widthlua / 36 :
    (widthlua > 1300)  ? widthlua / 36 :
    (widthlua > 1200)  ? widthlua / 35 :
    (widthlua > 1100)  ? widthlua / 35:
    (widthlua > 1000)  ? widthlua / 35 :
    (widthlua > 900)  ? widthlua / 28:
    (widthlua > 800)  ? widthlua / 25 :
    (widthlua > 700)  ? widthlua / 23 :
    (widthlua > 600)  ? widthlua / 23 :
    (widthlua > 500)  ? widthlua / 24 : widthlua / 25 ;

    double  h80p = heightlua * 0.05;
    double  hpergunta = heightlua * 0.23;
    double  hspace = heightlua * 0.033;
    double  hnumero = heightlua * 0.06;
    double  hpb = heightlua * 0.08;
    double  hbotao = heightlua * 0.07;
    double  hvolta = heightlua * 0.07;
    double  wtextop = widthlua * 0.9;
    double  htextop = heightlua * 0.7;

    return Scaffold(
      body: Container(
        padding: EdgeInsets.all(5),
        color: Colors.white,
        child: Column(
          children: <Widget>[

        SingleChildScrollView(
          child: Column(
          children: <Widget>[
            SizedBox(
              width: 30,
              height: 30,
              //child: Image.asset("images/logo.png"),
            ),

            SizedBox(
              width: wtextop,
              height: htextop,
              child:SingleChildScrollView(
                  scrollDirection: Axis.vertical,
                  child: Column(
                      children: <Widget>[
                        Text(textoTM,
                          style: TextStyle(
                            fontSize: font_adj,
                            fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                        )
                        ,]
                  )
              ),
            ),
            SizedBox(
              height: hspace,
            )])),
          //botao Iniciar
        Container(
          height: hpb,
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
                        builder: (context) => TM(widget._codAluno)));
              },
            ),
          ),
        ),
        //space
        SizedBox(
          height: 10,
        ),
        // Botao Voltar
        Container(
          height: hpb,
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
    )));
  }
}
