import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:flutter/rendering.dart';
import 'package:cloud_firestore/cloud_firestore.dart';
import 'package:intl/intl.dart';

import 'package:flutter_emoji/flutter_emoji.dart';
import 'package:wop3_ovp/descricao/teste001.dart';
import 'package:wop3_ovp/descricao/teste001f.dart';


import '../Home.dart';
import '../resultados/RESULTADOS.dart';





class P10 extends StatefulWidget {
  String _codAluno;
  P10(this._codAluno);
  @override
  _P10State createState() => _P10State();
}

class _P10State extends State<P10> {
  AnimationController controller;
  BorderRadiusGeometry _bR = BorderRadius.circular(8);
  String _dataTimeDb;

  //
  /*
 firebase

*/
  Firestore db = Firestore.instance;
  //

  void _finaliza () {
    DateTime now = DateTime.now();
    String _formattedDate = DateFormat('yyyy-MM-dd – kk:mm').format(now);
    _dataTimeDb = _formattedDate;
    db.collection("aluno")
        .document(widget._codAluno)
        .collection("Testes")
        .add(
        {
          "Code":"DT1","Data-teste": _formattedDate,
           "VERBAL" :  _logicamatematica,
           "ESPACIAL" : _espacial,
           "MUSICAL" : _musical,
           "CORPORAL" : _corporal,
           "INTERPESSOAL" : _interpessoal,
           "INTRAPESSOAL" : _intrapessoal,
           "IDEOLOGICA" : _ideologica,
           "BIOLOGICA" : _biologica,
           "ESPIRITUAL" : _espiritual
           }
    );
    Navigator.push(context,
        MaterialPageRoute(
            builder: (context) =>
                teste001f(widget._codAluno)));
  }

//


//


  int _npergunta = 60;
  int _resultado = 0;
  int _tresultado = 0;
  int _numeroSorteado = 1;
  int _numeroAnterior = 0;
//

  int score_teste001  = 0;


  //

  String _perguntatela = " ";
  var _valorpergunta = [0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0,0];
  var _pergunta = [
    ' ',
    'Na minha escola/trabalho, eu me ofereço frequntemente para ser voluntário(a).',
    'Mas eu seria uma escolha fraca para ....',
    'Dos meus passatempos desta lista, o meu favorito é:',
    'Eu frequentemente me divirto ou aprecio muito ou quando assisto....',
    'Quando eu vejo um filme, o aspecto de que me lembro mais é....',
    'Para entreter crianças no carro, eu gosto de ....',
    'Eu não aprecio pessoas que contam vantagens, maa quando eu era criança... Eu....',
    'Mas como adulto, Eu confesso.....',
    'Meus hobbies/passatempo inclçuem....'
  ];
  bool _s1 = false;
  bool _c1 = false;
  bool _c2 = false;
  bool _c3 = false;
  bool _c4 = false;
  bool _c5 = false;
  bool _c6 = false;
  bool _c7 = false;
  bool _c8 = false;
  bool _c9 = false;
  bool _c10 = false;

  bool _c11 = false;
  bool _c12 = false;
  bool _c13 = false;
  bool _c14 = false;
  bool _c15 = false;
  bool _c16 = false;
  bool _c17 = false;
  bool _c18 = false;
  bool _c19 = false;
  bool _c20 = false;

  bool _c21 = false;
  bool _c22 = false;
  bool _c23 = false;
  bool _c24 = false;
  bool _c25 = false;
  bool _c26 = false;
  bool _c27 = false;
  bool _c28 = false;
  bool _c29 = false;
  bool _c30 = false;

  bool _c31 = false;
  bool _c32 = false;
  bool _c33 = false;
  bool _c34 = false;
  bool _c35 = false;
  bool _c36 = false;
  bool _c37 = false;
  bool _c38 = false;
  bool _c39 = false;
  bool _c40 = false;

  bool _c41 = false;
  bool _c42 = false;
  bool _c43 = false;
  bool _c44 = false;
  bool _c45 = false;
  bool _c46 = false;
  bool _c47 = false;
  bool _c48 = false;
  bool _c49 = false;
  bool _c50 = false;

  bool _c51 = false;
  bool _c52 = false;
  bool _c53 = false;
  bool _c54 = false;
  bool _c55 = false;
  bool _c56 = false;
  bool _c57 = false;
  bool _c58 = false;
  bool _c59 = false;
  bool _c60 = false;

  bool _c61 = false;
  bool _c62 = false;
  bool _c63 = false;
  bool _c64 = false;
  bool _c65 = false;
  bool _c66 = false;
  bool _c67 = false;
  bool _c68 = false;
  bool _c69 = false;
  bool _c70 = false;

  bool _c71 = false;
  bool _c72 = false;
  bool _c73 = false;
  bool _c74 = false;
  bool _c75 = false;
  bool _c76 = false;
  bool _c77 = false;
  bool _c78 = false;
  bool _c79 = false;
  bool _c80 = false;

  bool _c81 = false;
  bool _c82 = false;
  bool _c83 = false;
  bool _c84 = false;
  bool _c85 = false;
  bool _c86 = false;
  bool _c87 = false;
  bool _c88 = false;
  bool _c89 = false;
  bool _c90 = false;

  bool _c91 = false;
  bool _c92 = false;
  bool _c93 = false;
  bool _c94 = false;
  bool _c95 = false;
  bool _c96 = false;
  bool _c97 = false;
  bool _c98 = false;

  //
  int _esc1 = 0;
  int _esc2 = 0;
  int _esc3 = 0;
  int _esc4 = 0;
  int _esc5 = 0;
  //
  int _verbal = 0;
  int _logicamatematica = 0;
  int _espacial = 0;
  int _musical = 0;
  int _corporal = 0;
  int _interpessoal = 0;
  int _intrapessoal = 0;
  int _ideologica = 0;
  int _biologica = 0;
  int _espiritual = 0;

  _montaResultado() {
    // VERBAL
    if (_c1) (_verbal ++);
    if (_c24) (_verbal ++);
    if (_c31) (_verbal ++);
    if (_c35) (_verbal ++);
    if (_c43) (_verbal ++);
    if (_c48) (_verbal ++);
    if (_c51) (_verbal ++);
    if (_c61) (_verbal ++);
    if (_c80) (_verbal ++);
    if (_c84) (_verbal ++);
    if (_c11) (_verbal --);
    if (_c78) (_verbal --);
    // logica matematica
    if (_c4) (_logicamatematica ++);
    if (_c8) (_logicamatematica ++);
    if (_c41) (_logicamatematica ++);
    if (_c49) (_logicamatematica ++);
    if (_c56) (_logicamatematica ++);
    if (_c63) (_logicamatematica ++);
    if (_c79) (_logicamatematica ++);
    if (_c81) (_logicamatematica ++);
    if (_c83) (_logicamatematica ++);
    if (_c14) (_logicamatematica --);
    if (_c18) (_logicamatematica --);
    if (_c72) (_logicamatematica --);
// logica espacial
    if (_c2) (_espacial ++);
    if (_c26) (_espacial ++);
    if (_c34) (_espacial ++);
    if (_c42) (_espacial ++);
    if (_c50) (_espacial ++);
    if (_c57) (_espacial ++);
    if (_c65) (_espacial ++);
    if (_c82) (_espacial ++);
    if (_c85) (_espacial ++);
    if (_c88) (_espacial ++);
    if (_c6) (_espacial --);
    if (_c12) (_espacial --);
    if (_c70) (_espacial --);
// MUSICAL
    if (_c3) (_musical ++);
    if (_c27) (_musical ++);
    if (_c28) (_musical ++);
    if (_c39) (_musical ++);
    if (_c52) (_musical ++);
    if (_c62) (_musical ++);
    if (_c65) (_musical ++);
    if (_c87) (_musical ++);
    if (_c90) (_musical ++);
    if (_c91) (_musical ++);
    if (_c13) (_musical --);
    if (_c75) (_musical --);
    // CORPORAL
    if (_c6) (_corporal ++);
    if (_c19) (_corporal ++);
    if (_c33) (_corporal ++);
    if (_c44) (_corporal ++);
    if (_c53) (_corporal ++);
    if (_c60) (_corporal ++);
    if (_c86) (_corporal ++);
    if (_c88) (_corporal ++);
    if (_c89) (_corporal ++);
    if (_c90) (_corporal ++);
    if (_c93) (_corporal ++);
    if (_c16) (_corporal --);
    if (_c71) (_corporal --);
    // INTERPESSOAL
    if (_c7) (_interpessoal ++);
    if (_c21) (_interpessoal ++);
    if (_c36) (_interpessoal ++);
    if (_c40) (_interpessoal ++);
    if (_c54) (_interpessoal ++);
    if (_c92) (_interpessoal ++);
    if (_c94) (_interpessoal ++);
    if (_c95) (_interpessoal ++);
    if (_c17) (_interpessoal --);
    if (_c69) (_interpessoal --);
    if (_c74) (_interpessoal --);
    // INTrapeSSOAL
    if (_c5) (_intrapessoal ++);
    if (_c22) (_intrapessoal ++);
    if (_c32) (_intrapessoal ++);
    if (_c45) (_intrapessoal ++);
    if (_c54) (_intrapessoal ++);
    if (_c55) (_intrapessoal ++);
    if (_c64) (_intrapessoal ++);
    if (_c95) (_intrapessoal ++);
    if (_c89) (_intrapessoal ++);
    if (_c92) (_intrapessoal ++);
    if (_c96) (_intrapessoal ++);
    if (_c15) (_intrapessoal --);
    // BIOLOGICA
    if (_c10) (_biologica ++);
    if (_c68) (_biologica ++);
    if (_c29) (_biologica ++);
    if (_c78) (_biologica ++);
    if (_c38) (_biologica ++);
    if (_c98) (_biologica ++);
    if (_c64) (_biologica ++);
    if (_c47) (_biologica ++);
    if (_c59) (_biologica ++);
    if (_c92) (_biologica ++);
    if (_c20) (_biologica --);
    // espiritual
    if (_c9) (_espiritual++);
    if (_c67) (_espiritual ++);
    if (_c28) (_espiritual ++);
    if (_c77) (_espiritual ++);
    if (_c37) (_espiritual ++);
    if (_c97) (_espiritual ++);
    if (_c46) (_espiritual ++);
    if (_c58) (_espiritual ++);
    if (_c19) (_espiritual --);
  }
    //
  //
  void _limpaBotao () {

  }


//
  void _gerarPergunta () {
    //gerar numero randomicos
    setState(() {
      _perguntatela = _pergunta[_numeroSorteado];
      _npergunta = _numeroSorteado;
    });
  }
  //
  @override
  void initState() {
    _gerarPergunta();
  }
  Widget build(BuildContext context) {
    final widthlua = MediaQuery.of(context).size.width;
    final heightlua = MediaQuery.of(context).size.height;


    bool _msg1 = ((_esc1 > 0) && (_esc1 < 3)) ? true : false;
    bool _msg2 = ((_esc2 > 1) && (_esc2 < 4)) ? true : false;
    bool _msg3 = ((_esc3 > 0) && (_esc3 < 3)) ? true : false;
    bool _msg4 = ((_esc4 > 0) && (_esc4 < 3)) ? true : false;

    double  font_adj1 =  (heightlua > 1600) ? 30 :
    (heightlua > 1500)  ?  30 :
    (heightlua > 1400)  ?  27 :
    (heightlua > 1300)  ?  28 :
    (heightlua > 1200)  ?  28 :
    (heightlua > 1100)  ?  29 :
    (heightlua > 1000)  ?  29 :
    (heightlua > 900)  ?  20 :
    (heightlua > 800)  ?  15 :
    (heightlua > 700)  ?  13 :
    (heightlua > 600)  ?  9 :
    (heightlua > 500)  ?  9 :  8 ;

    double  font_adj2 =  (heightlua > 1600) ? 22 :
    (heightlua > 1500)  ?  21 :
    (heightlua > 1400)  ?  20 :
    (heightlua > 1300)  ?  20 :
    (heightlua > 1200)  ?  15 :
    (heightlua > 1100)  ?  14 :
    (heightlua > 1000)  ?  13 :
    (heightlua > 900)  ?  12 :
    (heightlua > 800)  ?  11 :
    (heightlua > 700)  ?  10 :
    (heightlua > 600)  ?  9 :
    (heightlua > 500)  ?  8 :  7 ;

    double  fontpergunta =  (widthlua > 1600) ? 35:
    (widthlua > 1500)  ? 32 :
    (widthlua > 1400)  ? 30 :
    (widthlua > 1300)  ? 29 :
    (widthlua > 1200)  ? 28 :
    (widthlua > 1100)  ? 27:
    (widthlua > 1000)  ? 26 :
    (widthlua > 900)  ?  24:
    (widthlua > 800)  ?  22 :
    (widthlua > 700)  ?  20 :
    (widthlua > 600)  ?  18 :
    (widthlua > 500)  ?  16 : 14 ;




    double padbox =  (heightlua > 1600) ? 5 :
    (heightlua > 1500)  ? 4 :
    (heightlua > 1400)  ? 3 :
    (heightlua > 1300)  ? 2 :
    (heightlua > 1200)  ? 2 :
    (heightlua > 1100)  ? 1 :
    (heightlua > 1000)  ? 1 :
    (heightlua > 900)  ? 0.5 :
    (heightlua > 800)  ? 0.5 :
    (heightlua > 700)  ? 0.5 :
    (heightlua > 600)  ? 0.5 :
    (heightlua > 500)  ? 0.5:  0.5 ;

    Color colorbar =  (_npergunta > (_pergunta.length * 0.95) ? Colors.green :
    (_npergunta > (_pergunta.length * 0.90) ? Colors.greenAccent :
    (_npergunta > (_pergunta.length * 0.80) ? Colors.lightGreenAccent :
    (_npergunta > (_pergunta.length * 0.70) ? Colors.yellowAccent:
    (_npergunta > (_pergunta.length * 0.60) ? Colors.yellow :
    (_npergunta > (_pergunta.length * 0.50) ? Colors.orangeAccent :
    (_npergunta > (_pergunta.length * 0.40) ? Colors.deepOrangeAccent :
    (_npergunta > (_pergunta.length * 0.30) ? Colors.orange :
    (_npergunta > (_pergunta.length * 0.20) ? Colors.deepOrange :
    (_npergunta > (_pergunta.length * 0.10) ? Colors.redAccent :
    (_npergunta > (_pergunta.length * 0.05) ? Colors.red : Colors.pink)))))))))));



    double  w10p = widthlua * 0.10;
    double  w20p = widthlua * 0.20;
    double  w30p = widthlua * 0.30;
    double  w40p = widthlua * 0.40;
    double  w50p = widthlua * 0.50;
    double  w60p = widthlua * 0.60;
    double  w70p = widthlua * 0.70;
    double  w80p = widthlua * 0.80;
    double  w90p = widthlua * 0.90;
    double  w100p = widthlua * 0.8;


    double barranumerob = ((1 -(_npergunta / _pergunta.length))*100 );
    double  barranumerop = ((((_npergunta / _pergunta.length)-1)*100)+100);

    double  fontpercent  =
    ( barranumerop  < 1) ? font_adj1 * 0.1 :
    ( barranumerop  < 2) ? font_adj1 * 0.2 :
    ( barranumerop  < 3) ? font_adj1 * 0.3 :
    ( barranumerop  < 4) ? font_adj1 * 0.4 :
    ( barranumerop  < 5) ? font_adj1 * 0.5 :
    ( barranumerop  < 6) ? font_adj1 * 0.6 :
    ( barranumerop  < 7) ? font_adj1 * 0.7 :
    ( barranumerop  < 8) ? font_adj1 * 0.8 :
    ( barranumerop  < 9) ? font_adj1 * 0.9 :
    (barranumerop  < 10) ? font_adj1 * 0.95 : font_adj1;

    double  h10p = heightlua * 0.05;
    double  hpergunta = heightlua * 0.10;
    double  hspace = heightlua * 0.01;
    double  hnumero = heightlua * 0.06;
    double  hpb1 = heightlua * 0.05;
    double  hpb2 = heightlua * 0.03;
    double  hbotao = heightlua * 0.07;
    double  hvolta = heightlua * 0.07;

    double  h80p = heightlua * 0.80;

    String perpergunta = barranumerop.toString();
    //
    String item_1 ="Criar o jornalzinho.";
    String item_2 ="Planejar os espaços do escritório.";
    String item_3 ="Participar de celebrações / festas / acontecimentos.";
    String item_4 ="Organizar os meus apontamentos.";
    String item_5 ="Fazer um plano a longo prazo.";
    String item_6 ="Mexer na mobília do escritório.";
    String item_7 ="Administrar os relacionamentos.";
    String item_8 ="Agendar viagens de estudo / trabalho.";
    String item_9 ="Coletar alimentos para Instituição de Caridade.";
    String item_10 ="Fazer excursões para visitação de cavernas da natureza.";
    String item_11 ="Criar o jornalzinho.";
    String item_12 ="Planejar os espaços do escritório.";
    String item_13 ="Participar de celebrações. / festas / acontecimentos.";
    String item_14 ="Organizar os meus apontamentos.";
    String item_15 ="Fazer um plano a longo prazo.";
    String item_16 ="Mexer na mobília do escritório.";
    String item_17 ="Administrar os relacionamentos Junto ao chefe / professor.";
    String item_18 ="Agendar viagens de estudo / trabalho.";
    String item_19 ="Coletar alimentos para Instituição de Caridade.";
    String item_20 ="Fazer excursões para visitação de cavernas da natureza.";
    String item_21 ="Pôquer.";
    String item_22 ="Teste sua Personalidade.";
    String item_23 ="Disco plástico).";
    String item_24 ="Dicionário.";
    String item_25 ="Jogo de catas com 2 ou mais pessoas";
    String item_26 ="Xadrez.";
    String item_27 ="Descubra a música.";
    String item_28 ="Leitura de cartas de Tarot.";
    String item_29 ="Descubra a natureza.";
    String item_30 ="MTV / Musicais.";
    String item_31 ="Jornal Nacional.";
    String item_32 ="Programa tipo “Você Decide”.";
    String item_33 ="Programa esportivo.";
    String item_34 ="Filmes / Turismo / Desenhos.";
    String item_35 ="Notícias.";
    String item_36 ="Comédia/Novela.";
    String item_37 ="Café Filosófico da TV Cultura.";
    String item_38 ="Programas sobre Lugares Desconhecidos no multicanal.";
    String item_39 ="A música.";
    String item_40 ="Os personagens.";
    String item_41 ="O enredo.";
    String item_42 ="local.";
    String item_43 ="O diálogo.'";
    String item_44 ="As cenas com ‘dublês’ e efeitos especiais.";
    String item_45 ="Minha primeira impressão do filme.";
    String item_46 ="De algo espiritual e não real que o filme possa passar.";
    String item_47 ="Da paisagem ou natureza filmada.";
    String item_48 ="Jogos do alfabeto.";
    String item_49 ="Jogos de contar.";
    String item_50 ="Jogos de nome de estados.";
    String item_51 ="Ler livros.";
    String item_52 ="Cantar.";
    String item_53 ="Brincar de “cama de gato”.";
    String item_54 ="Enviar mensagens para outros carros.";
    String item_55 ="Escrever algo.";
    String item_56 ="Computar os quilômetros rodados e estimar tempo para a chegada.";
    String item_57 ="Estudar o mapa.";
    String item_58 ="Adivinhar uma imagem nas nuvens do céu.";
    String item_59 ="Observar quantos tipos de verde (cor) a natureza tem.";
    String item_60 ="Aprendi facilmente a andar de bicicleta.";
    String item_61 ="Aprendi a ler cedo.";
    String item_62 ="rendi a tocar um instrumento musical rapidamente.";
    String item_63 ="Aprendi a contar cedo.";
    String item_64 ="inventava alguns jogos de 'faz de conta' incríveis.";
    String item_65 ="Aprendia facilmente encontrar os caminhos no bairro antes dos meus amigos (as).";
    String item_66 ="Li todos os livros do Harry Porter.";
    String item_67 ="Era sempre o(a) lider da turma.";
    String item_68 ="Organizar passeios com amigos para acampamentos.";
    String item_69 ="Sinto-me esquisito(a) e \ situações sociais com estranhos.";
    String item_70 ="Eu confundo as informações visuais e especiais quando estou dirigindo.";
    String item_71 ="Eu odeio consertar coisas.";
    String item_72 ="Eu deixo as contas para pagar na última hora.";
    String item_73 ="Eu me subestimo sobre quanto tempo consigo aprender coisas novas.";
    String item_74 ="Eu odeio enviar agradecimentos por escrito.";
    String item_75 ="Sou desafinado (a), mas mantenho em segredo.";
    String item_76 ="Eu fico entediado (a) com poesia.";
    String item_77 ="Não gosto de nenhuma cerimônia religiosa.";
    String item_78 ="Odeio passeios para cidade do interior ou campo.";
    String item_79 ="Fazer orçamento da família.";
    String item_80 ="Ler pequenas estórias.";
    String item_81 ="Jogar damas.";
    String item_82 ="Decorar interiores.";
    String item_83 ="Programar em computador.";
    String item_84 ="Palavras cruzadas.";
    String item_85 ="Quebra-cabeça.";
    String item_86 ="Marcenaria.";
    String item_87 ="Tocar em um conjunto musical.";
    String item_88 ="Tricotar.";
    String item_89 ="Pescar.";
    String item_90 ="Dançar quadrilha.";
    String item_91 ="Ir a um concerto.";
    String item_92 ="Criar um álbum de família.";
    String item_93 ="Jogar futebol, vôlei.";
    String item_94 ="Ler uma autobiografia.";
    String item_95 ="Participar de clubes beneficentes.";
    String item_96 ="Estudar a genealogia da família.";
    String item_97 ="Participar de Cerimônias e Atividades Religiosas.";
    String item_98 ="Viajar à lugares simples, rústicos, quase desabitados e que tenha só natureza.";
    //
    return Scaffold(
      body: Container(

        color: Colors.white,
        child: ListView(
          children: <Widget>[
            //
            // box numero
            //
            //
            Container(
                height: hnumero,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(
                      children: <Widget>[
                        //
                        // numero pergunta
                        //
                        AnimatedContainer(
                            padding: EdgeInsets.only (top: 11),
                            width:   (w100p * (barranumerop / 100)),
                            height:  hnumero,
                            decoration: BoxDecoration(
                              color: colorbar,
                              borderRadius: _bR,
                            ),
                            alignment: Alignment.center,
                            duration: Duration(seconds: 1),
                            curve: Curves.elasticInOut,
                            child: Text(
                              barranumerop > 10 ?
                              (perpergunta.substring(0,2))+"%" :
                              (perpergunta.substring(0,1))+"%"
                              , textAlign: TextAlign.center,

                              style: TextStyle(
                                  fontSize: fontpercent,
                                  color: Colors.black,
                                  fontWeight: FontWeight.bold
                              ),
                            )
                        ),
                      ],
                    ),
                    Column(
                      children: <Widget>[
                        //
                        // numero pergunta
                        //
                        AnimatedContainer(
                            padding: EdgeInsets.only (top: 11),
                            width:   (w100p * (barranumerob / 100)),
                            height:  hnumero,
                            decoration: BoxDecoration(
                              color: Colors.white,
                              borderRadius: _bR,
                            ),
                            alignment: Alignment.center,
                            duration: Duration(seconds: 1),
                            curve: Curves.elasticInOut
                        ),
                      ],
                    )
                  ],
                )),
            //space
            SizedBox(
                height: hspace),

            SizedBox(
                width: w90p,
                height: hpergunta,
                child:Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    //
                    //  pergunta
                    //
                    Column(
                      children: <Widget>[
                      AnimatedContainer(
                        padding: EdgeInsets.all(11),
                        width:  w80p-30,
                        height: hpergunta,
                        decoration: BoxDecoration(
                          color: Colors.white,
                          borderRadius: _bR,
                        ),
                        alignment: Alignment.center,
                        duration: Duration(seconds: 2),
                        curve: Curves.elasticInOut,
                        child: Text(_perguntatela, textAlign: TextAlign.center,
                          style: TextStyle(
                              fontSize: fontpergunta,
                              color: Colors.black,
                              fontWeight: FontWeight.bold
                          ),),
                      )
                    ],),


                  ],
                )

            ),
            //space
            //
            // PERGUNTA 001
            //
        _npergunta == 1 ?
            //
            // PERGUNTA NUMERO 001
            //
            //
            Column(
                 children: <Widget>[


                SizedBox(
                height: hspace),

            //
            // 1
            //
            SizedBox(
                width: w80p,
                height: hpb1,
                child:
                Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Column(children: <Widget>[
                      GestureDetector (

                          onTap:() {
                            if (_c1 == false){
                              setState(() {
                                // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                _c1 = true;
                                _c2 = _c3 = _c4 = _c5 =  _c6 = _c7 = _c8 = _c9 = _c10 = false;
                                // _sc1 = false;
                              });
                            }else{
                              setState(() {
                                _c1 = _c2 = _c3 = _c4 = _c5 = _c6 = _c7 = _c8 = _c9 = _c10 = false;
                              });
                            }
                          },
                          child:
                          AnimatedContainer(
                            //  padding: EdgeInsets.only(top : padbox),
                              width: w60p,
                              height: hpb1,
                              decoration: BoxDecoration(
                                color: _c1 ? Colors.green: Colors.red,
                                borderRadius: _bR,
                              ),
                              alignment: Alignment.center,
                              duration: Duration(seconds: 3),
                              curve: Curves.fastLinearToSlowEaseIn,
                              child:
                              Text(item_1,textAlign: TextAlign.center,
                                style: TextStyle(
                                    fontSize: font_adj1,
                                    color: _c1 ? Colors.black : Colors.black,
                                    fontWeight: FontWeight.bold
                                ),
                              )
                          ))
                    ],)
                  ],
                )
            ),
            //space
            SizedBox(
                height: hspace),
           //
           // 2
           //
           SizedBox(
               width: w80p,
               height: hpb1,
               child:
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Column(children: <Widget>[
                     GestureDetector (

                         onTap:() {
                           if (_c2 == false){
                             setState(() {
                               // _sc2 = _sc3 = _sc4 = _sc5 = true;
                               _c2 = true;
                               _c1 = _c3 = _c4 = _c5 =  _c6 = _c7 = _c8 = _c9 = _c10 = false;
                               // _sc1 = false;
                             });
                           }else{
                             setState(() {
                               _c1 = _c2 = _c3 = _c4 = _c5 = _c6 = _c7 = _c8 = _c9 = _c10 = false;
                             });
                           }
                         },
                         child:
                         AnimatedContainer(
                            // padding: EdgeInsets.only(top : padbox),
                             width: w60p,
                             height: hpb1,
                             decoration: BoxDecoration(
                               color: _c2 ? Colors.green: Colors.red,
                               borderRadius: _bR,
                             ),
                             alignment: Alignment.center ,
                             duration: Duration(seconds: 3),
                             curve: Curves.fastLinearToSlowEaseIn,
                             child:
                             Text(item_2,textAlign: TextAlign.center,
                               style: TextStyle(
                                   fontSize: font_adj1,
                                   color: _c2 ? Colors.black : Colors.black,
                                   fontWeight: FontWeight.bold
                               ),
                             )
                         ))
                   ],)
                 ],
               )
           ),
           //space
           SizedBox(
               height: hspace),
           //
           // 3
           //
           SizedBox(
               width: w80p,
               height: hpb1,
               child:
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Column(children: <Widget>[
                     GestureDetector (

                         onTap:() {
                           if (_c3 == false){
                             setState(() {
                               // _sc2 = _sc3 = _sc4 = _sc5 = true;
                               _c3 = true;
                               _c1 = _c2 = _c4 = _c5 =  _c6 = _c7 = _c8 = _c9 = _c10 = false;
                               // _sc1 = false;
                             });
                           }else{
                             setState(() {
                               _c1 = _c2 = _c3 = _c4 = _c5 = _c6 = _c7 = _c8 = _c9 = _c10 = false;
                             });
                           }
                         },
                         child:
                         AnimatedContainer(
                           //  padding: EdgeInsets.only(top : padbox),
                             width: w60p,
                             height: hpb1,
                             decoration: BoxDecoration(
                               color: _c3 ? Colors.green: Colors.red,
                               borderRadius: _bR,
                             ),
                              alignment: Alignment.center ,
                             duration: Duration(seconds: 3),
                             curve: Curves.fastLinearToSlowEaseIn,
                             child:
                             Text(item_3,textAlign: TextAlign.center,
                               style: TextStyle(
                                   fontSize: font_adj1,
                                   color: _c3 ? Colors.black : Colors.black,
                                   fontWeight: FontWeight.bold
                               ),
                             )
                         ))
                   ],)
                 ],
               )
           ),
           //space
           SizedBox(
               height: hspace),
           //
           // 4
           //
           SizedBox(
               width: w80p,
               height: hpb1,
               child:
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Column(children: <Widget>[
                     GestureDetector (

                         onTap:() {
                           if (_c4 == false){
                             setState(() {
                               //
                               _c4 = true;
                               _c1 = _c2 = _c3 = _c5 =  _c6 = _c7 = _c8 = _c9 = _c10 = false;
                               // _sc1 = false;
                             });
                           }else{
                             setState(() {
                               _c1 = _c2 = _c3 = _c4 = _c5 = _c6 = _c7 = _c8 = _c9 = _c10 = false;
                             });
                           }
                         },
                         child:
                         AnimatedContainer(
                           //  padding: EdgeInsets.only(top : padbox),
                             width: w60p,
                             height: hpb1,
                             decoration: BoxDecoration(
                               color: _c4 ? Colors.green: Colors.red,
                               borderRadius: _bR,
                             ),
                             alignment: Alignment.center,
                             duration: Duration(seconds: 3),
                             curve: Curves.fastLinearToSlowEaseIn,
                             child:
                             Text(item_4,textAlign: TextAlign.center,
                               style: TextStyle(
                                   fontSize: font_adj1,
                                   color: _c4 ? Colors.black : Colors.black,
                                   fontWeight: FontWeight.bold
                               ),
                             )
                         ))
                   ],)
                 ],
               )
           ),
           //space
           SizedBox(
               height: hspace),
           //
           // 5
           //
           SizedBox(
               width: w80p,
               height: hpb1,
               child:
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Column(children: <Widget>[
                     GestureDetector (

                         onTap:() {
                           if (_c5 == false){
                             setState(() {
                               // _sc2 = _sc3 = _sc4 = _sc5 = true;
                               _c5 = true;
                               _c1 = _c2 = _c3 = _c4 =  _c6 = _c7 = _c8 = _c9 = _c10 = false;
                               // _sc1 = false;
                             });
                           }else{
                             setState(() {
                               _c1 = _c2 = _c3 = _c4 = _c5 = _c6 = _c7 = _c8 = _c9 = _c10 = false;
                             });
                           }
                         },
                         child:
                         AnimatedContainer(
                          //   padding: EdgeInsets.only(top : padbox),
                             width: w60p,
                             height: hpb1,
                             decoration: BoxDecoration(
                               color: _c5 ? Colors.green: Colors.red,
                               borderRadius: _bR,
                             ),
                             alignment: Alignment.center,
                             duration: Duration(seconds: 3),
                             curve: Curves.fastLinearToSlowEaseIn,
                             child:
                             Text(item_5,textAlign: TextAlign.center,
                               style: TextStyle(
                                   fontSize: font_adj1,
                                   color: _c5 ? Colors.black : Colors.black,
                                   fontWeight: FontWeight.bold
                               ),
                             )
                         ))
                   ],)
                 ],
               )
           ),
           //space
           SizedBox(
               height: hspace),
           //
           // 6
           //
           SizedBox(
               width: w80p,
               height: hpb1,
               child:
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Column(children: <Widget>[
                     GestureDetector (

                         onTap:() {
                           if (_c6 == false){
                             setState(() {
                               // _sc2 = _sc3 = _sc4 = _sc5 = true;
                               _c6 = true;
                               _c1 = _c2 = _c3 = _c4 =  _c5 = _c7 = _c8 = _c9 = _c10 = false;
                               // _sc1 = false;
                             });
                           }else{
                             setState(() {
                               _c1 = _c2 = _c3 = _c4 = _c5 = _c6 = _c7 = _c8 = _c9 = _c10 = false;
                             });
                           }
                         },
                         child:
                         AnimatedContainer(
                           //  padding: EdgeInsets.only(top : padbox),
                             width: w60p,
                             height: hpb1,
                             decoration: BoxDecoration(
                               color: _c6 ? Colors.green: Colors.red,
                               borderRadius: _bR,
                             ),
                             alignment: Alignment.center ,
                             duration: Duration(seconds: 3),
                             curve: Curves.fastLinearToSlowEaseIn,
                             child:
                             Text(item_6,textAlign: TextAlign.center,
                               style: TextStyle(
                                   fontSize: font_adj1,
                                   color: _c6 ? Colors.black : Colors.black,
                                   fontWeight: FontWeight.bold
                               ),
                             )
                         ))
                   ],)
                 ],
               )
           ),
           //space
           SizedBox(
               height: hspace),
           //
           // 7
           //
           SizedBox(
               width: w80p,
               height: hpb1,
               child:
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Column(children: <Widget>[
                     GestureDetector (

                         onTap:() {
                           if (_c7 == false){
                             setState(() {
                               // _sc2 = _sc3 = _sc4 = _sc5 = true;
                               _c7 = true;
                               _c1 = _c2 = _c3 = _c4 =  _c5 = _c6 = _c8 = _c9 = _c10 = false;
                               // _sc1 = false;
                             });
                           }else{
                             setState(() {
                               _c1 = _c2 = _c3 = _c4 = _c5 = _c6 = _c7 = _c8 = _c9 = _c10 = false;
                             });
                           }
                         },
                         child:
                         AnimatedContainer(
                           //  padding: EdgeInsets.only(top : padbox),
                             width: w60p,
                             height: hpb1,
                             decoration: BoxDecoration(
                               color: _c7 ? Colors.green: Colors.red,
                               borderRadius: _bR,
                             ),
                             alignment: Alignment.center,
                             duration: Duration(seconds: 3),
                             curve: Curves.fastLinearToSlowEaseIn,
                             child:
                             Text(item_7,textAlign: TextAlign.center,
                               style: TextStyle(
                                   fontSize: font_adj1,
                                   color: _c7 ? Colors.black : Colors.black,
                                   fontWeight: FontWeight.bold
                               ),
                             )
                         ))
                   ],)
                 ],
               )
           ),
           //space
           SizedBox(
               height: hspace),
           //
           // 8
           //
           SizedBox(
               width: w80p,
               height: hpb1,
               child:
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Column(children: <Widget>[
                     GestureDetector (

                         onTap:() {
                           if (_c8 == false){
                             setState(() {
                               // _sc2 = _sc3 = _sc4 = _sc5 = true;
                               _c8 = true;
                               _c1 = _c2 = _c3 = _c4 =  _c5 = _c6 = _c7 = _c9 = _c10 = false;
                               // _sc1 = false;
                             });
                           }else{
                             setState(() {
                               _c1 = _c2 = _c3 = _c4 = _c5 = _c6 = _c7 = _c8 = _c9 = _c10 = false;
                             });
                           }
                         },
                         child:
                         AnimatedContainer(
                          //   padding: EdgeInsets.only(top : padbox),
                             width: w60p,
                             height: hpb1,
                             decoration: BoxDecoration(
                               color: _c8 ? Colors.green: Colors.red,
                               borderRadius: _bR,
                             ),
                             alignment: Alignment.center,
                             duration: Duration(seconds: 3),
                             curve: Curves.fastLinearToSlowEaseIn,
                             child:
                             Text(item_8,textAlign: TextAlign.center,
                               style: TextStyle(
                                   fontSize: font_adj1,
                                   color: _c8 ? Colors.black : Colors.black,
                                   fontWeight: FontWeight.bold
                               ),
                             )
                         ))
                   ],)
                 ],
               )
           ),
           //space
           SizedBox(
               height: hspace),
           //
           // 9
           //
           SizedBox(
               width: w80p,
               height: hpb1,
               child:
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Column(children: <Widget>[
                     GestureDetector (

                         onTap:() {
                           if (_c9 == false){
                             setState(() {
                               // _sc2 = _sc3 = _sc4 = _sc5 = true;
                               _c9= true;
                               _c1 = _c2 = _c3 = _c4 =  _c5 = _c6 = _c7 = _c8 = _c10 = false;
                               // _sc1 = false;
                             });
                           }else{
                             setState(() {
                               _c1 = _c2 = _c3 = _c4 = _c5 = _c6 = _c7 = _c8 = _c9 = _c10 = false;
                             });
                           }
                         },
                         child:
                         AnimatedContainer(
                          //   padding: EdgeInsets.only(top : padbox),
                             width: w60p,
                             height: hpb1,
                             decoration: BoxDecoration(
                               color: _c9 ? Colors.green: Colors.red,
                               borderRadius: _bR,
                             ),
                             alignment: Alignment.center,
                             duration: Duration(seconds: 3),
                             curve: Curves.fastLinearToSlowEaseIn,
                             child:
                             Text(item_9,textAlign: TextAlign.center,
                               style: TextStyle(
                                   fontSize: font_adj1,
                                   color: _c9 ? Colors.black : Colors.black,
                                   fontWeight: FontWeight.bold
                               ),
                             )
                         ))
                   ],)
                 ],
               )
           ),
           //space
           SizedBox(
               height: hspace),
           //
           // 10
           //
           SizedBox(
               width: w80p,
               height: hpb1,
               child:
               Row(
                 mainAxisAlignment: MainAxisAlignment.center,
                 children: <Widget>[
                   Column(children: <Widget>[
                     GestureDetector (

                         onTap:() {
                           if (_c10 == false){
                             setState(() {
                               // _sc2 = _sc3 = _sc4 = _sc5 = true;
                               _c10 = true;
                               _c2 = _c3 = _c4 = _c5 =  _c6 = _c7 = _c8 = _c9 = _c1 = false;
                               // _sc1 = false;
                             });
                           }else{
                             setState(() {
                               _c1 = _c2 = _c3 = _c4 = _c5 = _c6 = _c7 = _c8 = _c9 = _c10 = false;
                             });
                           }
                         },
                         child:
                         AnimatedContainer(
                          //   padding: EdgeInsets.only(top : padbox),
                             width: w60p,
                             height: hpb1,
                             decoration: BoxDecoration(
                               color: _c10 ? Colors.green: Colors.red,
                               borderRadius: _bR,
                             ),
                             alignment: Alignment.center,
                             duration: Duration(seconds: 3),
                             curve: Curves.fastLinearToSlowEaseIn,
                             child:
                             Text(item_10,textAlign: TextAlign.center,
                               style: TextStyle(
                                   fontSize: font_adj1,
                                   color: _c10 ? Colors.black : Colors.black,
                                   fontWeight: FontWeight.bold
                               ),
                             )
                         ))
                   ],)
                 ],
               )
           ),
           //space
           SizedBox(
                       height: hspace),
                   //space
            //
            // BOTOES
            //
            //
            SizedBox(
                height: hspace),
            SizedBox(

              height: hbotao,
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: <Widget>[
                  Container(
                    width: w30p,
                    height: hbotao,
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
                              "Voltar",
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
                          if(_numeroSorteado == 1 ){
                            Navigator.push(context,
                                MaterialPageRoute(
                                    builder: (context) =>
                                        teste001(widget._codAluno)));
                          }else{
                            _limpaBotao();
                           _numeroSorteado --;
                            _gerarPergunta();}
                        },
                      ),
                    ),
                  ),
                  SizedBox(
                    width: 30,
                  ),
                  Container(
                  ),
                  (_c1 || _c2 || _c3 || _c4 || _c5 || _c6 || _c7 || _c8 || _c9 || _c10 ) ? Container(
                    width: w30p,
                    height: hbotao,
                    alignment: Alignment.centerLeft,
                    decoration: BoxDecoration(
                      gradient: LinearGradient(
                        begin: Alignment.topLeft,
                        end: Alignment.bottomRight,
                        stops: [0.3, 1],
                        colors: [
                          Color(0XFFF92B7F),
                          Color(0xFFF58524),
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
                              " Próxima",
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
                          _numeroSorteado ++;
                          _gerarPergunta();
                        },
                      ),
                    ),
                  ):
                  Container(
                      width: w30p
                  ),
                ],
              ),
            ),
            SizedBox(
                height: hspace),
            Container(
              height: hvolta,
              alignment: Alignment.bottomCenter,
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
          ]) :
            //
            //
            //
        _npergunta == 2 ?
            //
            // PERGUNTA NUMERO 002
            //
            //
            Column(
                children: <Widget>[


                  SizedBox(
                      height: hspace),

                  //
                  // 11
                  //
                  SizedBox(
                      width: w80p,
                      height: hpb1,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(children: <Widget>[
                            GestureDetector (

                                onTap:() {
                                  if (_c11 == false){
                                    setState(() {
                                      // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                      _c11 = true;
                                      _c12 = _c13 = _c14 = _c15 =  _c16 = _c17 = _c18 = _c19 = _c20 = false;
                                      // _sc1 = false;
                                    });
                                  }else{
                                    setState(() {
                                      _c11 = _c12 = _c13 = _c14 = _c15 = _c16 = _c17 = _c18 = _c19 = _c20 = false;
                                    });
                                  }
                                },
                                child:
                                AnimatedContainer(
                                  //  padding: EdgeInsets.only(top : padbox),
                                    width: w60p,
                                    height: hpb1,
                                    decoration: BoxDecoration(
                                      color: _c11 ? Colors.green: Colors.red,
                                      borderRadius: _bR,
                                    ),
                                    alignment: Alignment.center,
                                    duration: Duration(seconds: 3),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    child:
                                    Text(item_11,textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: font_adj1,
                                          color: _c11 ? Colors.black : Colors.black,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                ))
                          ],)
                        ],
                      )
                  ),
                  //space
                  SizedBox(
                      height: hspace),
                  //
                  // 12
                  //
                  SizedBox(
                      width: w80p,
                      height: hpb1,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(children: <Widget>[
                            GestureDetector (

                                onTap:() {
                                  if (_c12 == false){
                                    setState(() {
                                      // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                      _c12 = true;
                                      _c11 = _c13 = _c14 = _c15 =  _c16 = _c17 = _c18 = _c19 = _c20 = false;
                                      // _sc1 = false;
                                    });
                                  }else{
                                    setState(() {
                                      _c11 = _c12 = _c13 = _c14 = _c15 = _c16 = _c17 = _c18 = _c19 = _c20 = false;
                                    });
                                  }
                                },
                                child:
                                AnimatedContainer(
                                  //  padding: EdgeInsets.only(top : padbox),
                                    width: w60p,
                                    height: hpb1,
                                    decoration: BoxDecoration(
                                      color: _c12 ? Colors.green: Colors.red,
                                      borderRadius: _bR,
                                    ),
                                    alignment: Alignment.center,
                                    duration: Duration(seconds: 3),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    child:
                                    Text(item_12,textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: font_adj1,
                                          color: _c12 ? Colors.black : Colors.black,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                ))
                          ],)
                        ],
                      )
                  ),
                  //space
                  SizedBox(
                      height: hspace),
                  //
                  // 13
                  //
                  SizedBox(
                      width: w80p,
                      height: hpb1,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(children: <Widget>[
                            GestureDetector (

                                onTap:() {
                                  if (_c13 == false){
                                    setState(() {
                                      // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                      _c13 = true;
                                      _c11 = _c12 = _c14 = _c15 =  _c16 = _c17 = _c18 = _c19 = _c20 = false;
                                      // _sc1 = false;
                                    });
                                  }else{
                                    setState(() {
                                      _c11 = _c12 = _c13 = _c14 = _c15 = _c16 = _c17 = _c18 = _c19 = _c20 = false;
                                    });
                                  }
                                },
                                child:
                                AnimatedContainer(
                                  //  padding: EdgeInsets.only(top : padbox),
                                    width: w60p,
                                    height: hpb1,
                                    decoration: BoxDecoration(
                                      color: _c13 ? Colors.green: Colors.red,
                                      borderRadius: _bR,
                                    ),
                                    alignment: Alignment.center,
                                    duration: Duration(seconds: 3),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    child:
                                    Text(item_13,textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: font_adj1,
                                          color: _c13 ? Colors.black : Colors.black,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                ))
                          ],)
                        ],
                      )
                  ),
                  //space
                  SizedBox(
                      height: hspace),
                  //
                  // 14
                  //
                  SizedBox(
                      width: w80p,
                      height: hpb1,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(children: <Widget>[
                            GestureDetector (

                                onTap:() {
                                  if (_c14 == false){
                                    setState(() {
                                      // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                      _c14 = true;
                                      _c11 = _c12 = _c13 = _c15 =  _c16 = _c17 = _c18 = _c19 = _c20 = false;
                                      // _sc1 = false;
                                    });
                                  }else{
                                    setState(() {
                                      _c11 = _c12 = _c13 = _c14 = _c15 = _c16 = _c17 = _c18 = _c19 = _c20 = false;
                                    });
                                  }
                                },
                                child:
                                AnimatedContainer(
                                  //  padding: EdgeInsets.only(top : padbox),
                                    width: w60p,
                                    height: hpb1,
                                    decoration: BoxDecoration(
                                      color: _c14 ? Colors.green: Colors.red,
                                      borderRadius: _bR,
                                    ),
                                    alignment: Alignment.center,
                                    duration: Duration(seconds: 3),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    child:
                                    Text(item_14,textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: font_adj1,
                                          color: _c14 ? Colors.black : Colors.black,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                ))
                          ],)
                        ],
                      )
                  ),
                  //space
                  SizedBox(
                      height: hspace),
                  //
                  // 15
                  //
                  SizedBox(
                      width: w80p,
                      height: hpb1,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(children: <Widget>[
                            GestureDetector (

                                onTap:() {
                                  if (_c15 == false){
                                    setState(() {
                                      // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                      _c15 = true;
                                      _c11 = _c12 = _c13 = _c14 =  _c16 = _c17 = _c18 = _c19 = _c20 = false;
                                      // _sc1 = false;
                                    });
                                  }else{
                                    setState(() {
                                      _c11 = _c12 = _c13 = _c14 = _c15 = _c16 = _c17 = _c18 = _c19 = _c20 = false;
                                    });
                                  }
                                },
                                child:
                                AnimatedContainer(
                                  //  padding: EdgeInsets.only(top : padbox),
                                    width: w60p,
                                    height: hpb1,
                                    decoration: BoxDecoration(
                                      color: _c15 ? Colors.green: Colors.red,
                                      borderRadius: _bR,
                                    ),
                                    alignment: Alignment.center,
                                    duration: Duration(seconds: 3),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    child:
                                    Text(item_15,textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: font_adj1,
                                          color: _c15 ? Colors.black : Colors.black,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                ))
                          ],)
                        ],
                      )
                  ),
                  //space
                  SizedBox(
                      height: hspace),
                  //
                  // 16
                  //
                  SizedBox(
                      width: w80p,
                      height: hpb1,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(children: <Widget>[
                            GestureDetector (

                                onTap:() {
                                  if (_c16 == false){
                                    setState(() {
                                      // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                      _c16 = true;
                                      _c11 = _c12 = _c13 = _c14 =  _c15 = _c17 = _c18 = _c19 = _c20 = false;
                                      // _sc1 = false;
                                    });
                                  }else{
                                    setState(() {
                                      _c11 = _c12 = _c13 = _c14 = _c15 = _c16 = _c17 = _c18 = _c19 = _c20 = false;
                                    });
                                  }
                                },
                                child:
                                AnimatedContainer(
                                  //  padding: EdgeInsets.only(top : padbox),
                                    width: w60p,
                                    height: hpb1,
                                    decoration: BoxDecoration(
                                      color: _c16 ? Colors.green: Colors.red,
                                      borderRadius: _bR,
                                    ),
                                    alignment: Alignment.center,
                                    duration: Duration(seconds: 3),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    child:
                                    Text(item_16,textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: font_adj1,
                                          color: _c16 ? Colors.black : Colors.black,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                ))
                          ],)
                        ],
                      )
                  ),
                  //space
                  SizedBox(
                      height: hspace),
                  //
                  // 17
                  //
                  SizedBox(
                      width: w80p,
                      height: hpb1,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(children: <Widget>[
                            GestureDetector (

                                onTap:() {
                                  if (_c17 == false){
                                    setState(() {
                                      // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                      _c17 = true;
                                      _c11 = _c12 = _c13 = _c14 =  _c15 = _c16 = _c18 = _c19 = _c20 = false;
                                      // _sc1 = false;
                                    });
                                  }else{
                                    setState(() {
                                      _c11 = _c12 = _c13 = _c14 = _c15 = _c16 = _c17 = _c18 = _c19 = _c20 = false;
                                    });
                                  }
                                },
                                child:
                                AnimatedContainer(
                                  //  padding: EdgeInsets.only(top : padbox),
                                    width: w60p,
                                    height: hpb1,
                                    decoration: BoxDecoration(
                                      color: _c17 ? Colors.green: Colors.red,
                                      borderRadius: _bR,
                                    ),
                                    alignment: Alignment.center,
                                    duration: Duration(seconds: 3),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    child:
                                    Text(item_17,textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: font_adj1,
                                          color: _c17 ? Colors.black : Colors.black,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                ))
                          ],)
                        ],
                      )
                  ),
                  //space
                  SizedBox(
                      height: hspace),
                  //
                  // 18
                  //
                  SizedBox(
                      width: w80p,
                      height: hpb1,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(children: <Widget>[
                            GestureDetector (

                                onTap:() {
                                  if (_c18 == false){
                                    setState(() {
                                      // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                      _c18 = true;
                                      _c11 = _c12 = _c13 = _c14 =  _c15 = _c16 = _c17 = _c19 = _c20 = false;
                                      // _sc1 = false;
                                    });
                                  }else{
                                    setState(() {
                                      _c11 = _c12 = _c13 = _c14 = _c15 = _c16 = _c17 = _c18 = _c19 = _c20 = false;
                                    });
                                  }
                                },
                                child:
                                AnimatedContainer(
                                  //  padding: EdgeInsets.only(top : padbox),
                                    width: w60p,
                                    height: hpb1,
                                    decoration: BoxDecoration(
                                      color: _c18 ? Colors.green: Colors.red,
                                      borderRadius: _bR,
                                    ),
                                    alignment: Alignment.center,
                                    duration: Duration(seconds: 3),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    child:
                                    Text(item_18,textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: font_adj1,
                                          color: _c18 ? Colors.black : Colors.black,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                ))
                          ],)
                        ],
                      )
                  ),
                  //space
                  SizedBox(
                      height: hspace),
                  //
                  // 19
                  //
                  SizedBox(
                      width: w80p,
                      height: hpb1,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(children: <Widget>[
                            GestureDetector (

                                onTap:() {
                                  if (_c19 == false){
                                    setState(() {
                                      // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                      _c19 = true;
                                      _c11 = _c12 = _c13 = _c14 =  _c15 = _c16 = _c17 = _c18 = _c20 = false;
                                      // _sc1 = false;
                                    });
                                  }else{
                                    setState(() {
                                      _c11 = _c12 = _c13 = _c14 = _c15 = _c16 = _c17 = _c18 = _c19 = _c20 = false;
                                    });
                                  }
                                },
                                child:
                                AnimatedContainer(
                                  //  padding: EdgeInsets.only(top : padbox),
                                    width: w60p,
                                    height: hpb1,
                                    decoration: BoxDecoration(
                                      color: _c19 ? Colors.green: Colors.red,
                                      borderRadius: _bR,
                                    ),
                                    alignment: Alignment.center,
                                    duration: Duration(seconds: 3),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    child:
                                    Text(item_19,textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: font_adj1,
                                          color: _c19 ? Colors.black : Colors.black,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                ))
                          ],)
                        ],
                      )
                  ),
                  //space
                  SizedBox(
                      height: hspace),
                  //
                  // 20
                  //
                  SizedBox(
                      width: w80p,
                      height: hpb1,
                      child:
                      Row(
                        mainAxisAlignment: MainAxisAlignment.center,
                        children: <Widget>[
                          Column(children: <Widget>[
                            GestureDetector (

                                onTap:() {
                                  if (_c20 == false){
                                    setState(() {
                                      // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                      _c20 = true;
                                      _c11 = _c12 = _c13 = _c14 =  _c15 = _c16 = _c17 = _c18 = _c19 = false;
                                      // _sc1 = false;
                                    });
                                  }else{
                                    setState(() {
                                      _c11 = _c12 = _c13 = _c14 = _c15 = _c16 = _c17 = _c18 = _c19 = _c20 = false;
                                    });
                                  }
                                },
                                child:
                                AnimatedContainer(
                                  //  padding: EdgeInsets.only(top : padbox),
                                    width: w60p,
                                    height: hpb1,
                                    decoration: BoxDecoration(
                                      color: _c20 ? Colors.green: Colors.red,
                                      borderRadius: _bR,
                                    ),
                                    alignment: Alignment.center,
                                    duration: Duration(seconds: 3),
                                    curve: Curves.fastLinearToSlowEaseIn,
                                    child:
                                    Text(item_20,textAlign: TextAlign.center,
                                      style: TextStyle(
                                          fontSize: font_adj1,
                                          color: _c20 ? Colors.black : Colors.black,
                                          fontWeight: FontWeight.bold
                                      ),
                                    )
                                ))
                          ],)
                        ],
                      )
                  ),
                  //space
                  SizedBox(
                      height: hspace),

                  //space
                  //
                  // BOTOES
                  //
                  //
                  SizedBox(
                      height: hspace),
                  SizedBox(

                    height: hbotao,
                    child: Row(
                      mainAxisAlignment: MainAxisAlignment.center,
                      children: <Widget>[
                        Container(
                          width: w30p,
                          height: hbotao,
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
                                    "Voltar",
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
                                if(_numeroSorteado == 1 ){
                                  Navigator.push(context,
                                      MaterialPageRoute(
                                          builder: (context) =>
                                             teste001(widget._codAluno)));
                                }else{
                                  _limpaBotao();

                                  _numeroSorteado --;
                                  _gerarPergunta();}
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          width: 30,
                        ),
                        Container(
                        ),
                        (_c11 || _c12 || _c13 || _c14 || _c15 || _c16 || _c17 || _c18 || _c19 || _c20 ) ? Container(
                          width: w30p,
                          height: hbotao,
                          alignment: Alignment.centerLeft,
                          decoration: BoxDecoration(
                            gradient: LinearGradient(
                              begin: Alignment.topLeft,
                              end: Alignment.bottomRight,
                              stops: [0.3, 1],
                              colors: [
                                Color(0XFFF92B7F),
                                Color(0xFFF58524),
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
                                    " Próxima",
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
                                _numeroSorteado ++;
                                _gerarPergunta();
                              },
                            ),
                          ),
                        ):
                        Container(
                            width: w30p
                        ),
                      ],
                    ),
                  ),
                  SizedBox(
                      height: hspace),
                  Container(
                    height: hvolta,
                    alignment: Alignment.bottomCenter,
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
                ]) :
        _npergunta == 3 ?
        //
        // PERGUNTA NUMERO 003
        //
        //
        Column(
            children: <Widget>[


              SizedBox(
                  height: hspace),

              //
              // 21
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c21 == false){
                                setState(() {
                                  // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                  _c21 = true;
                                  _c22 = _c23 = _c24 = _c25 =  _c26 = _c27 = _c28 = _c29 = false;
                                  // _sc1 = false;
                                });
                              }else{
                                setState(() {
                                  _c21 = _c22 = _c23 = _c24 = _c25 = _c26 = _c27 = _c28 = _c29 = false;
                                });
                              }
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c21 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_21,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c21 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space
              SizedBox(
                  height: hspace),
              //
              // 22
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c22 == false){
                                setState(() {
                                  // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                  _c22 = true;
                                  _c21 = _c23 = _c24 = _c25 =  _c26 = _c27 = _c28 = _c29 =  false;
                                  // _sc1 = false;
                                });
                              }else{
                                setState(() {
                                  _c21 = _c22 = _c23 = _c24 = _c25 = _c26 = _c27 = _c28 = _c29 = false;
                                });
                              }
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c22 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_22,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c22 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space
              SizedBox(
                  height: hspace),
              //
              // 23
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c23 == false){
                                setState(() {
                                  // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                  _c23 = true;
                                  _c21 = _c22 = _c24 = _c25 =  _c26 = _c27 = _c28 = _c29 =  false;
                                  // _sc1 = false;
                                });
                              }else{
                                setState(() {
                                  _c21 = _c22 = _c23 = _c24 = _c25 = _c26 = _c27 = _c28 = _c29 =  false;
                                });
                              }
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c23 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_23,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c23 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space
              SizedBox(
                  height: hspace),
              //
              // 24
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c24 == false){
                                setState(() {
                                  // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                  _c24 = true;
                                  _c21 = _c22 = _c23 = _c25 =  _c26 = _c27 = _c28 = _c29 = false;
                                  // _sc1 = false;
                                });
                              }else{
                                setState(() {
                                  _c21 = _c22 = _c23 = _c24 = _c25 = _c26 = _c27 = _c28 = _c29 =  false;
                                });
                              }
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c24 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_24,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c24 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space
              SizedBox(
                  height: hspace),
              //
              // 25
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c25 == false){
                                setState(() {
                                  // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                  _c25 = true;
                                  _c21 = _c22 = _c23 = _c24 =  _c26 = _c27 = _c28 = _c29 =  false;
                                  // _sc1 = false;
                                });
                              }else{
                                setState(() {
                                  _c21 = _c22 = _c23 = _c24 = _c25 = _c26 = _c27 = _c28 = _c29 =  false;
                                });
                              }
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c25 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_25,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c25 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space
              SizedBox(
                  height: hspace),
              //
              // 26
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c26 == false){
                                setState(() {
                                  // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                  _c26 = true;
                                  _c21 = _c22 = _c23 = _c24 =  _c25 = _c27 = _c28 = _c29 =  false;
                                  // _sc1 = false;
                                });
                              }else{
                                setState(() {
                                  _c21 = _c22 = _c23 = _c24 = _c25 = _c26 = _c27 = _c28 = _c29 =  false;
                                });
                              }
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c26 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_26,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c26 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space
              SizedBox(
                  height: hspace),
              //
              // 27
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c27 == false){
                                setState(() {
                                  // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                  _c27 = true;
                                  _c21 = _c22 = _c23 = _c24 =  _c25 = _c26 = _c28 = _c29 = false;
                                  // _sc1 = false;
                                });
                              }else{
                                setState(() {
                                  _c21 = _c22 = _c23 = _c24 = _c25 = _c26 = _c27 = _c28 = _c29 =  false;
                                });
                              }
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c27 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_27,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c27 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space
              SizedBox(
                  height: hspace),
              //
              // 28
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c28 == false){
                                setState(() {
                                  // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                  _c28 = true;
                                  _c21 = _c22 = _c23 = _c24 =  _c25 = _c26 = _c27 = _c29 =  false;
                                  // _sc1 = false;
                                });
                              }else{
                                setState(() {
                                  _c21 = _c22 = _c23 = _c24 = _c25 = _c26 = _c27 = _c28 = _c29 =  false;
                                });
                              }
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c28 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_28,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c28 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space
              SizedBox(
                  height: hspace),
              //
              // 29
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c29 == false){
                                setState(() {
                                  // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                  _c29 = true;
                                  _c21 = _c22 = _c23 = _c24 =  _c25 = _c26 = _c27 = _c28 =  false;
                                  // _sc1 = false;
                                });
                              }else{
                                setState(() {
                                  _c21 = _c22 = _c23 = _c24 = _c25 = _c26 = _c27 = _c28 = _c29 =  false;
                                });
                              }
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c29 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_29,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c29 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space
              SizedBox(
                  height: hspace),
              //space
              //
              // BOTOES
              //
              //
              SizedBox(
              height: hspace),
              SizedBox(

                height: hbotao,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: w30p,
                      height: hbotao,
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
                                "Voltar",
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
                            if(_numeroSorteado == 1 ){
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          teste001(widget._codAluno)));
                            }else{
                              _limpaBotao();

                              _numeroSorteado --;
                              _gerarPergunta();}
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                    ),
                    (_c21 || _c22 || _c23 || _c24 || _c25 || _c26 || _c27 || _c28 || _c29 ) ? Container(
                      width: w30p,
                      height: hbotao,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.3, 1],
                          colors: [
                            Color(0XFFF92B7F),
                            Color(0xFFF58524),
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
                                " Próxima",
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
                            _numeroSorteado ++;
                            _gerarPergunta();
                          },
                        ),
                      ),
                    ):
                    Container(
                        width: w30p
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: hspace),
              Container(
                height: hvolta,
                alignment: Alignment.bottomCenter,
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
            ]) :
        _npergunta == 4 ?
        //
        // PERGUNTA NUMERO 004
        //
        //
        Column(
            children: <Widget>[


              SizedBox(
                  height: hspace),

              //
              // 30
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                             if (_c30 == true ) {setState(() { _c30 = false; _esc1 --;}); }
                             else
                             if (_c30 == false ) {setState(() { _c30 = true; _esc1 ++;});}
                              },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c30 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_30,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c30 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space
              SizedBox(
                  height: hspace),
              //
              // 31
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c31 == true ) {setState(() { _c31 = false; _esc1 --;});}
                              else
                              if (_c31 == false ) {setState(() { _c31 = true; _esc1 ++;});}
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c31 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_31,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c31 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //
              //
              // 32
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c32 == true ) {setState(() { _c32 = false; _esc1 --;});}
                              else
                              if (_c32 == false ) {setState(() { _c32 = true; _esc1 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c32 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_32,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c32 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 33
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c33 == true ) {setState(() { _c33 = false; _esc1 --;});}
                              else
                              if (_c33 == false ) {setState(() { _c33 = true; _esc1 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c33 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_33,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c33 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 34
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c34 == true ) {setState(() { _c34 = false; _esc1 --;});}
                              else
                              if (_c34 == false ) {setState(() { _c34 = true; _esc1 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c34 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_34,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c34 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 35
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c35 == true ) {setState(() { _c35 = false; _esc1 --;});}
                              else
                              if (_c35 == false ) {setState(() { _c35 = true; _esc1 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c35 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_35,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c35 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 36
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c36 == true ) {setState(() { _c36 = false; _esc1 --;});}
                              else
                              if (_c36 == false ) {setState(() { _c36 = true; _esc1 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c36 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_36,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c36 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 37
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c37 == true ) {setState(() { _c37 = false; _esc1 --;});}
                              else
                              if (_c37 == false ) {setState(() { _c37 = true; _esc1 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c37 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_37,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c37 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 38
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c38 == true ) {setState(() { _c38 = false; _esc1 --;});}
                              else
                              if (_c38 == false ) {setState(() { _c38 = true; _esc1 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c38 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_38,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c38 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space

              //
              // BOTOES
              //
              //
              SizedBox(
                  height: hspace),
              SizedBox(

                height: hbotao,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: w30p,
                      height: hbotao,
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
                                "Voltar",
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
                            if(_numeroSorteado == 1 ){
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          teste001(widget._codAluno)));
                            }else{
                              _limpaBotao();

                              _numeroSorteado --;
                              _gerarPergunta();}
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                    ),
                    (_esc1 == 2 || _esc1 == 1) ? Container(
                      width: w30p,
                      height: hbotao,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.3, 1],
                          colors: [
                            Color(0XFFF92B7F),
                            Color(0xFFF58524),
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
                                " Próxima",
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
                            _numeroSorteado ++;
                            _gerarPergunta();
                          },
                        ),
                      ),
                    ):
                    Container(
                        width: w30p
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: hspace),
              Container(
                height: _msg1 ? 0 :hvolta-20,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Color(0xFF3C6600),
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
                          "ESCOLHER ATÉ 2 OPÇÕES",
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
              )

            ]) :
        _npergunta == 5 ?
        //
        // PERGUNTA NUMERO 003
        //
        //
        Column(
            children: <Widget>[


              SizedBox(
                  height: hspace),

              //
              // 21
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c39 == false){
                                setState(() {
                                  // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                  _c39 = true;
                                  _c40 = _c41 = _c42 = _c43 =  _c44 = _c45 = _c46 = _c47 = false;
                                  // _sc1 = false;
                                });
                              }else{
                                setState(() {
                                  _c39 = _c40 = _c41 = _c42 = _c43 = _c44 = _c45 = _c46 = _c47 = false;
                                });
                              }
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c39 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_39,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c39 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space
              SizedBox(
                  height: hspace),
              //
              // 22
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c40 == false){
                                setState(() {
                                  // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                  _c40 = true;
                                  _c39 = _c41 = _c42 = _c43 =  _c44 = _c45 = _c46 = _c47 =  false;
                                  // _sc1 = false;
                                });
                              }else{
                                setState(() {
                                  _c39 = _c40 = _c41 = _c42 = _c43 = _c44 = _c45 = _c46 = _c47 = false;
                                });
                              }
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c40 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_40,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c40 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space
              SizedBox(
                  height: hspace),
              //
              // 23
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c41 == false){
                                setState(() {
                                  // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                  _c41 = true;
                                  _c39 = _c40 = _c42 = _c43 =  _c44 = _c45 = _c46 = _c47 =  false;
                                  // _sc1 = false;
                                });
                              }else{
                                setState(() {
                                  _c39 = _c40 = _c41 = _c42 = _c43 = _c44 = _c45 = _c46 = _c47 =  false;
                                });
                              }
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c41 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_41,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c41 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space
              SizedBox(
                  height: hspace),
              //
              // 24
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c42 == false){
                                setState(() {
                                  // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                  _c42 = true;
                                  _c39 = _c40 = _c41 = _c43 =  _c44 = _c45 = _c46 = _c47 = false;
                                  // _sc1 = false;
                                });
                              }else{
                                setState(() {
                                  _c39 = _c40 = _c41 = _c42 = _c43 = _c44 = _c45 = _c46 = _c47 =  false;
                                });
                              }
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c42 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_42,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c42 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space
              SizedBox(
                  height: hspace),
              //
              // 25
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c43 == false){
                                setState(() {
                                  // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                  _c43 = true;
                                  _c39 = _c40 = _c41 = _c42 =  _c44 = _c45 = _c46 = _c47 =  false;
                                  // _sc1 = false;
                                });
                              }else{
                                setState(() {
                                  _c39 = _c40 = _c41 = _c42 = _c43 = _c44 = _c45 = _c46 = _c47 =  false;
                                });
                              }
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c43 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_43,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c43 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space
              SizedBox(
                  height: hspace),
              //
              // 26
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c44 == false){
                                setState(() {
                                  // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                  _c44 = true;
                                  _c39 = _c40 = _c41 = _c42 =  _c43 = _c45 = _c46 = _c47 =  false;
                                  // _sc1 = false;
                                });
                              }else{
                                setState(() {
                                  _c39 = _c40 = _c41 = _c42 = _c43 = _c44 = _c45 = _c46 = _c47 =  false;
                                });
                              }
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c44 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_44,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c44 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space
              SizedBox(
                  height: hspace),
              //
              // 27
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c45 == false){
                                setState(() {
                                  // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                  _c45 = true;
                                  _c39 = _c40 = _c41 = _c42 =  _c43 = _c44 = _c46 = _c47 = false;
                                  // _sc1 = false;
                                });
                              }else{
                                setState(() {
                                  _c39 = _c40 = _c41 = _c42 = _c43 = _c44 = _c45 = _c46 = _c47 =  false;
                                });
                              }
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c45 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_45,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c45 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space
              SizedBox(
                  height: hspace),
              //
              // 28
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c46 == false){
                                setState(() {
                                  // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                  _c46 = true;
                                  _c39 = _c40 = _c41 = _c42 =  _c43 = _c44 = _c45 = _c47 =  false;
                                  // _sc1 = false;
                                });
                              }else{
                                setState(() {
                                  _c39 = _c40 = _c41 = _c42 = _c43 = _c44 = _c45 = _c46 = _c47 =  false;
                                });
                              }
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c46 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_46,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c46 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space
              SizedBox(
                  height: hspace),
              //
              // 29
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c47 == false){
                                setState(() {
                                  // _sc2 = _sc3 = _sc4 = _sc5 = true;
                                  _c47 = true;
                                  _c39 = _c40 = _c41 = _c42 =  _c43 = _c44 = _c45 = _c46 =  false;
                                  // _sc1 = false;
                                });
                              }else{
                                setState(() {
                                  _c39 = _c40 = _c41 = _c42 = _c43 = _c44 = _c45 = _c46 = _c47 =  false;
                                });
                              }
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c47 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_47,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c47 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space
              SizedBox(
                  height: hspace),
              //space
              //
              // BOTOES
              //
              //
              SizedBox(
                  height: hspace),
              SizedBox(

                height: hbotao,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: w30p,
                      height: hbotao,
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
                                "Voltar",
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
                            if(_numeroSorteado == 1 ){
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          teste001(widget._codAluno)));
                            }else{
                              _limpaBotao();

                              _numeroSorteado --;
                              _gerarPergunta();}
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                    ),
                    (_c39 || _c40 || _c41 || _c42 || _c43 || _c44 || _c45 || _c46 || _c47 ) ? Container(
                      width: w30p,
                      height: hbotao,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.3, 1],
                          colors: [
                            Color(0XFFF92B7F),
                            Color(0xFFF58524),
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
                                " Próxima",
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
                            _numeroSorteado ++;
                            _gerarPergunta();
                          },
                        ),
                      ),
                    ):
                    Container(
                        width: w30p
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: hspace),
              Container(
                height: hvolta,
                alignment: Alignment.bottomCenter,
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
            ]) :
        _npergunta == 6 ?
        //
        // PERGUNTA NUMERO 006
        //
        Column(
            children: <Widget>[


              SizedBox(
                  height: hspace),

              //
              // 48
              //
              SizedBox(
                  width: w80p,
                  height: hpb2,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c48 == true ) {setState(() { _c48 = false; _esc2 --;}); }
                              else
                              if (_c48 == false ) {setState(() { _c48 = true; _esc2 ++;});}
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb2,
                                decoration: BoxDecoration(
                                  color: _c48 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_48,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj2,
                                      color: _c48 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space
              SizedBox(
                  height: hspace),
              //
              // 31
              //
              SizedBox(
                  width: w80p,
                  height: hpb2,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c49 == true ) {setState(() { _c49 = false; _esc2 --;});}
                              else
                              if (_c49 == false ) {setState(() { _c49 = true; _esc2 ++;});}
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb2,
                                decoration: BoxDecoration(
                                  color: _c49 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_49,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj2,
                                      color: _c49 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //
              //
              // 32
              //
              SizedBox(
                  width: w80p,
                  height: hpb2,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c50 == true ) {setState(() { _c50 = false; _esc2 --;});}
                              else
                              if (_c50 == false ) {setState(() { _c50 = true; _esc2 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb2,
                                decoration: BoxDecoration(
                                  color: _c50 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_50,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj2,
                                      color: _c50 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 33
              //
              SizedBox(
                  width: w80p,
                  height: hpb2,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c51 == true ) {setState(() { _c51 = false; _esc2 --;});}
                              else
                              if (_c51 == false ) {setState(() { _c51 = true; _esc2 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb2,
                                decoration: BoxDecoration(
                                  color: _c51 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_51,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj2,
                                      color: _c51 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 34
              //
              SizedBox(
                  width: w80p,
                  height: hpb2,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c52 == true ) {setState(() { _c52 = false; _esc2 --;});}
                              else
                              if (_c52 == false ) {setState(() { _c52 = true; _esc2 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb2,
                                decoration: BoxDecoration(
                                  color: _c52 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_52,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj2,
                                      color: _c52 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 35
              //
              SizedBox(
                  width: w80p,
                  height: hpb2,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c53 == true ) {setState(() { _c53 = false; _esc2 --;});}
                              else
                              if (_c53 == false ) {setState(() { _c53 = true; _esc2 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb2,
                                decoration: BoxDecoration(
                                  color: _c53 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_53,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj2,
                                      color: _c53 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 36
              //
              SizedBox(
                  width: w80p,
                  height: hpb2,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c54 == true ) {setState(() { _c54 = false; _esc2 --;});}
                              else
                              if (_c54 == false ) {setState(() { _c54 = true; _esc2 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb2,
                                decoration: BoxDecoration(
                                  color: _c54 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_54,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj2,
                                      color: _c54 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 37
              //
              SizedBox(
                  width: w80p,
                  height: hpb2,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c55 == true ) {setState(() { _c55 = false; _esc2 --;});}
                              else
                              if (_c55 == false ) {setState(() { _c55 = true; _esc2 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb2,
                                decoration: BoxDecoration(
                                  color: _c55 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_55,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj2,
                                      color: _c55 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 38
              //
              SizedBox(
                  width: w80p,
                  height: hpb2,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c56 == true ) {setState(() { _c56 = false; _esc2 --;});}
                              else
                              if (_c56 == false ) {setState(() { _c56 = true; _esc2 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb2,
                                decoration: BoxDecoration(
                                  color: _c56 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_56,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj2,
                                      color: _c56 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 38
              //
              SizedBox(
                  width: w80p,
                  height: hpb2,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c57 == true ) {setState(() { _c57 = false; _esc2 --;});}
                              else
                              if (_c57 == false ) {setState(() { _c57 = true; _esc2 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb2,
                                decoration: BoxDecoration(
                                  color: _c57 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_57,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj2,
                                      color: _c57 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 38
              //
              SizedBox(
                  width: w80p,
                  height: hpb2,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c58 == true ) {setState(() { _c58 = false; _esc2 --;});}
                              else
                              if (_c58 == false ) {setState(() { _c58 = true; _esc2 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb2,
                                decoration: BoxDecoration(
                                  color: _c58 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_58,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj2,
                                      color: _c58 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 38
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c59 == true ) {setState(() { _c59 = false; _esc2 --;});}
                              else
                              if (_c59 == false ) {setState(() { _c59 = true; _esc2 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c59 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_59,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj2,
                                      color: _c59 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space

              //
              // BOTOES
              //
              //
              SizedBox(
                  height: hspace),
              SizedBox(

                height: hbotao,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: w30p,
                      height: hbotao,
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
                                "Voltar",
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
                            if(_numeroSorteado == 1 ){
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          teste001(widget._codAluno)));
                            }else{
                              _limpaBotao();

                              _numeroSorteado --;
                              _gerarPergunta();}
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                    ),
                    (_esc2 == 2 || _esc2 == 3) ? Container(
                      width: w30p,
                      height: hbotao,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.3, 1],
                          colors: [
                            Color(0XFFF92B7F),
                            Color(0xFFF58524),
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
                                " Próxima",
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
                            _numeroSorteado ++;
                            _gerarPergunta();
                          },
                        ),
                      ),
                    ):
                    Container(
                        width: w30p
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: hspace),
              Container(
                height: _msg2 ? 0 :hvolta-20,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Color(0xFF3C6600),
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
                          "ESCOLHER ATÉ 2 OPÇÕES",
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
              )

            ]) :
        _npergunta == 7 ?
        //
        // PERGUNTA NUMERO 004
        //
        //
        Column(
            children: <Widget>[


              SizedBox(
                  height: hspace),

              //
              // 60
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c60 == true ) {setState(() { _c60 = false; _esc3 --;}); }
                              else
                              if (_c60 == false ) {setState(() { _c60 = true; _esc3 ++;});}
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c60 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_60,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c60 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space
              SizedBox(
                  height: hspace),
              //
              // 31
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c61 == true ) {setState(() { _c61 = false; _esc3 --;});}
                              else
                              if (_c61 == false ) {setState(() { _c61 = true; _esc3 ++;});}
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c61 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_61,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c61 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //
              //
              // 32
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c62 == true ) {setState(() { _c62 = false; _esc3 --;});}
                              else
                              if (_c62 == false ) {setState(() { _c62 = true; _esc3 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c62 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_62,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c62 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 33
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c63 == true ) {setState(() { _c63 = false; _esc3 --;});}
                              else
                              if (_c63 == false ) {setState(() { _c63 = true; _esc3 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c63 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_63,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c63 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 34
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c64 == true ) {setState(() { _c64 = false; _esc3 --;});}
                              else
                              if (_c64 == false ) {setState(() { _c64 = true; _esc3 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c64 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_64,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c64 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 35
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c65 == true ) {setState(() { _c65 = false; _esc3 --;});}
                              else
                              if (_c65 == false ) {setState(() { _c65 = true; _esc3 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c65 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_65,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c65 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 36
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c66 == true ) {setState(() { _c66 = false; _esc3 --;});}
                              else
                              if (_c66 == false ) {setState(() { _c66 = true; _esc3 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c66 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_66,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c66 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 37
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c67 == true ) {setState(() { _c67 = false; _esc3 --;});}
                              else
                              if (_c67 == false ) {setState(() { _c67 = true; _esc3 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c67 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_67,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c67 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 38
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c68 == true ) {setState(() { _c68 = false; _esc3 --;});}
                              else
                              if (_c68 == false ) {setState(() { _c68 = true; _esc3 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c68 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_68,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c68 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space

              //
              // BOTOES
              //
              //
              SizedBox(
                  height: hspace),
              SizedBox(

                height: hbotao,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: w30p,
                      height: hbotao,
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
                                "Voltar",
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
                            if(_numeroSorteado == 1 ){
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          teste001(widget._codAluno)));
                            }else{
                              _limpaBotao();

                              _numeroSorteado --;
                              _gerarPergunta();}
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                    ),
                    (_esc3 == 2 || _esc3 == 1) ? Container(
                      width: w30p,
                      height: hbotao,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.3, 1],
                          colors: [
                            Color(0XFFF92B7F),
                            Color(0xFFF58524),
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
                                " Próxima",
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
                            _numeroSorteado ++;
                            _gerarPergunta();
                          },
                        ),
                      ),
                    ):
                    Container(
                        width: w30p
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: hspace),
              Container(
                height: _msg3 ? 0 :hvolta-20,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Color(0xFF3C6600),
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
                          "ESCOLHER ATÉ 2 OPÇÕES",
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
              )

            ]) :
        //
        _npergunta == 8 ?
        //
        // PERGUNTA NUMERO 008
        //
        //
        Column(
            children: <Widget>[


              SizedBox(
                  height: hspace),

              //
              // 69
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c69 == true ) {setState(() { _c69 = false; _esc4 --;}); }
                              else
                              if (_c69 == false ) {setState(() { _c69 = true; _esc4 ++;});}
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c69 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_69,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c69 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space
              SizedBox(
                  height: hspace),
              //
              // 31
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c70 == true ) {setState(() { _c70 = false; _esc4 --;});}
                              else
                              if (_c70 == false ) {setState(() { _c70 = true; _esc4 ++;});}
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c70 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_70,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c70 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //
              //
              // 32
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c71 == true ) {setState(() { _c71 = false; _esc4 --;});}
                              else
                              if (_c71 == false ) {setState(() { _c71 = true; _esc4 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c71 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_71,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c71 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 33
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c72 == true ) {setState(() { _c72 = false; _esc4 --;});}
                              else
                              if (_c72 == false ) {setState(() { _c72 = true; _esc4 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c72 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_72,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c72 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 34
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c73 == true ) {setState(() { _c73 = false; _esc4 --;});}
                              else
                              if (_c73 == false ) {setState(() { _c73 = true; _esc4 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c73 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_73,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c73 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 35
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c74 == true ) {setState(() { _c74 = false; _esc4 --;});}
                              else
                              if (_c74 == false ) {setState(() { _c74 = true; _esc4 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c74 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_74,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c74 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 36
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c75 == true ) {setState(() { _c75 = false; _esc4 --;});}
                              else
                              if (_c75 == false ) {setState(() { _c75 = true; _esc4 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c75 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_75,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c75 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 37
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c76 == true ) {setState(() { _c76 = false; _esc4 --;});}
                              else
                              if (_c76 == false ) {setState(() { _c76 = true; _esc4 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c76 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_76,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c76 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 38
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c77 == true ) {setState(() { _c77 = false; _esc4 --;});}
                              else
                              if (_c77 == false ) {setState(() { _c77 = true; _esc4 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c77 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_77,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c77 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c78 == true ) {setState(() { _c78 = false; _esc4 --;});}
                              else
                              if (_c78 == false ) {setState(() { _c78 = true; _esc4 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c78 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_78,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c78 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space

              //
              // BOTOES
              //
              //
              SizedBox(
                  height: hspace),
              SizedBox(

                height: hbotao,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: w30p,
                      height: hbotao,
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
                                "Voltar",
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
                            if(_numeroSorteado == 1 ){
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          teste001(widget._codAluno)));
                            }else{
                              _limpaBotao();

                              _numeroSorteado --;
                              _gerarPergunta();}
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                    ),
                    (_esc4 == 2 || _esc4 == 1) ? Container(
                      width: w30p,
                      height: hbotao,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.3, 1],
                          colors: [
                            Color(0XFFF92B7F),
                            Color(0xFFF58524),
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
                                " Próxima",
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
                            _numeroSorteado ++;
                            _gerarPergunta();
                          },
                        ),
                      ),
                    ):
                    Container(
                        width: w30p
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: hspace),
              Container(
                height: _msg4 ? 0 :hvolta-20,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Color(0xFF3C6600),
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
                          "ESCOLHER ATÉ 2 OPÇÕES",
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
              )

            ]) :
        //
        _npergunta == 9?
        //
        // PERGUNTA NUMERO 008
        //
        //
        Column(
            children: <Widget>[


              SizedBox(
                  height: hspace),

              //
              // 69
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c79 == true ) {setState(() { _c79 = false; _esc5 --;}); }
                              else
                              if (_c79 == false ) {setState(() { _c79 = true; _esc5 ++;});}
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c79 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_79,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c79 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space
              SizedBox(
                  height: hspace),
              //
              // 31
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c80 == true ) {setState(() { _c80 = false; _esc5 --;});}
                              else
                              if (_c80 == false ) {setState(() { _c80 = true; _esc5 ++;});}
                            },
                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c80 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_80,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c80 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //
              //
              // 32
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c81 == true ) {setState(() { _c81 = false; _esc5 --;});}
                              else
                              if (_c81 == false ) {setState(() { _c81 = true; _esc5 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c81 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_81,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c81 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 33
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c82 == true ) {setState(() { _c82 = false; _esc5 --;});}
                              else
                              if (_c82 == false ) {setState(() { _c82 = true; _esc5 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c82 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_82,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c82 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 34
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c83 == true ) {setState(() { _c83 = false; _esc5 --;});}
                              else
                              if (_c83 == false ) {setState(() { _c83 = true; _esc5 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c83 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_83,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c83 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 35
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c84 == true ) {setState(() { _c84 = false; _esc5 --;});}
                              else
                              if (_c84 == false ) {setState(() { _c84 = true; _esc5 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c84 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_84,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c84 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 36
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c85 == true ) {setState(() { _c85 = false; _esc5 --;});}
                              else
                              if (_c85 == false ) {setState(() { _c85 = true; _esc5 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c85 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_85,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c85 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 37
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c86 == true ) {setState(() { _c86 = false; _esc5 --;});}
                              else
                              if (_c86 == false ) {setState(() { _c86 = true; _esc5 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c86 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_86,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c86 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 38
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c87 == true ) {setState(() { _c87 = false; _esc5 --;});}
                              else
                              if (_c87 == false ) {setState(() { _c87 = true; _esc5 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c87 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_87,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c87 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //
              //
              // 38
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c88 == true ) {setState(() { _c88 = false; _esc5 --;});}
                              else
                              if (_c88 == false ) {setState(() { _c88 = true; _esc5 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c88 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_88,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c88 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 38
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c89 == true ) {setState(() { _c89 = false; _esc5 --;});}
                              else
                              if (_c89 == false ) {setState(() { _c89 = true; _esc5 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c89 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_89,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c89 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 38
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c90 == true ) {setState(() { _c90 = false; _esc5 --;});}
                              else
                              if (_c90 == false ) {setState(() { _c90 = true; _esc5 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c90 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_90,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c90 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 38
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c91 == true ) {setState(() { _c91 = false; _esc5 --;});}
                              else
                              if (_c91 == false ) {setState(() { _c91 = true; _esc5 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c91 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_91,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c91 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 38
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c92 == true ) {setState(() { _c92 = false; _esc5 --;});}
                              else
                              if (_c92 == false ) {setState(() { _c92 = true; _esc5 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c92 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_92,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c92 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 38
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c93 == true ) {setState(() { _c93 = false; _esc5 --;});}
                              else
                              if (_c93 == false ) {setState(() { _c93 = true; _esc5 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c93 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_93,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c93 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 38
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c94 == true ) {setState(() { _c94 = false; _esc5 --;});}
                              else
                              if (_c94 == false ) {setState(() { _c94 = true; _esc5 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c94 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_94,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c94 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 38
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c95 == true ) {setState(() { _c95 = false; _esc5 --;});}
                              else
                              if (_c95 == false ) {setState(() { _c95 = true; _esc5 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c95 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_95,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c95 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 38
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c96 == true ) {setState(() { _c96 = false; _esc5 --;});}
                              else
                              if (_c96 == false ) {setState(() { _c96 = true; _esc5 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c96 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_96,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c96 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 38
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c97 == true ) {setState(() { _c97 = false; _esc5 --;});}
                              else
                              if (_c97 == false ) {setState(() { _c97 = true; _esc5 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c97 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_97,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c97 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),
              //space
              //
              //
              // 38
              //
              SizedBox(
                  width: w80p,
                  height: hpb1,
                  child:
                  Row(
                    mainAxisAlignment: MainAxisAlignment.center,
                    children: <Widget>[
                      Column(children: <Widget>[
                        GestureDetector (

                            onTap:() {
                              if (_c98 == true ) {setState(() { _c98 = false; _esc5 --;});}
                              else
                              if (_c98 == false ) {setState(() { _c98 = true; _esc5 ++;});}
                            },

                            child:
                            AnimatedContainer(
                              //  padding: EdgeInsets.only(top : padbox),
                                width: w60p,
                                height: hpb1,
                                decoration: BoxDecoration(
                                  color: _c98 ? Colors.green: Colors.red,
                                  borderRadius: _bR,
                                ),
                                alignment: Alignment.center,
                                duration: Duration(seconds: 3),
                                curve: Curves.fastLinearToSlowEaseIn,
                                child:
                                Text(item_98,textAlign: TextAlign.center,
                                  style: TextStyle(
                                      fontSize: font_adj1,
                                      color: _c98 ? Colors.black : Colors.black,
                                      fontWeight: FontWeight.bold
                                  ),
                                )
                            ))
                      ],)
                    ],
                  )
              ),
              //space

              SizedBox(
                  height: hspace),


              SizedBox(
                  height: hspace),
              //space

              //
              // BOTOES
              //
              //
              SizedBox(
                  height: hspace),
              SizedBox(

                height: hbotao,
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: <Widget>[
                    Container(
                      width: w30p,
                      height: hbotao,
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
                                "Voltar",
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
                            if(_numeroSorteado == 1 ){
                              Navigator.push(context,
                                  MaterialPageRoute(
                                      builder: (context) =>
                                          teste001(widget._codAluno)));
                            }else{
                              _limpaBotao();

                              _numeroSorteado --;
                              _gerarPergunta();}
                          },
                        ),
                      ),
                    ),
                    SizedBox(
                      width: 30,
                    ),
                    Container(
                    ),
                    (_esc5 > 0) ? Container(
                      width: w30p,
                      height: hbotao,
                      alignment: Alignment.centerLeft,
                      decoration: BoxDecoration(
                        gradient: LinearGradient(
                          begin: Alignment.topLeft,
                          end: Alignment.bottomRight,
                          stops: [0.3, 1],
                          colors: [
                            Color(0XFFF92B7F),
                            Color(0xFFF58524),
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
                                " Próxima",
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
                            _montaResultado();
                            _finaliza();
                          },
                        ),
                      ),
                    ):
                    Container(
                        width: w30p
                    ),
                  ],
                ),
              ),
              SizedBox(
                  height: hspace),
              Container(
                height: hvolta-20,
                alignment: Alignment.bottomCenter,
                decoration: BoxDecoration(
                  color: Color(0xFF3C6600),
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
                          "ESCOLHER QUANTAS OPÇÕES QUISER.",
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
              )

            ]):
        //
             Container()
//
          ]
        ),
      ),
    );
  }
}
