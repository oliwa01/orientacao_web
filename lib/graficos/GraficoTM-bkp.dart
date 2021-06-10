import 'package:date_format/date_format.dart';
import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'dart:async';
import 'package:path/path.dart';
import 'dart:math' as math;
import 'package:font_awesome_flutter/font_awesome_flutter.dart';
import 'package:charts_flutter/flutter.dart' as charts;

import '../Home.dart';

class GraficosTM_bkp extends StatefulWidget {
  int v1; int v2; int v3; int v4; int v5; int v6; int v7; int v8; int v9; int v10; int v11; int v12;
  Color cv1; Color cv2; Color cv3 ;Color cv4; Color cv5; Color cv6; Color cv7; Color cv8; Color cv9; Color cv10; Color cv11; Color cv12;
  String _codAluno;

  GraficosTM_bkp(this._codAluno,
      this.v1,
      this.cv1,
      this.v2,
      this.cv2,
      this.v3,
      this.cv3,
      this.v4,
      this.cv4,
      this.v5,
      this.cv5,
      this.v6,
      this.cv6,
      this.v7,
      this.cv7,
      this.v8,
      this.cv8,
      this.v9,
      this.cv9,
      this.v10,
      this.cv10,
      this.v11,
      this.cv11,
      this.v12,
      this.cv12);

  _GraficosTM_bkpState createState() => _GraficosTM_bkpState();

}

class _GraficosTM_bkpState extends State<GraficosTM_bkp> {
  List<charts.Series<Resultados, String>> _seriesData;
  List<charts.Series<Task, String>> _seriesPieData;
  List<charts.Series<Sales, int>> _seriesLineData;

  _generateData() async {
    var data1 = [
      new Resultados(1, 'ATITUDES', widget.v1, widget.cv1),
      new Resultados(2, 'OBJETVOS', widget.v2, widget.cv2),
      new Resultados(3, 'PRIORIDAES', widget.v3, widget.cv3),
      new Resultados(4, 'ANÁLIZE', widget.v4, widget.cv4),
      new Resultados(5, 'PLANEJAMENTO', widget.v5, widget.cv5),
      new Resultados(6, 'AGENDAMENTO', widget.v6, widget.cv6),
      new Resultados(7, 'INTERRUPÇÕES', widget.v7, widget.cv7),
      new Resultados(8, 'REUNIÕES', widget.v8, widget.cv8),
      new Resultados(8, 'DOCUMENTAÇÃO', widget.v9, widget.cv9),
      new Resultados(8, 'DELEGAÇÃO', widget.v10, widget.cv10),
      new Resultados(8, 'PROCRASTINAÇÃO', widget.v11, widget.cv11),
      new Resultados(8, 'TEMPO DO TRABALHO EM EQUIPE', widget.v12, widget.cv12),

    ];

    var piedata = [

      new Task('Dominância', 30.1, Color(0xff109618)),
      new Task('Influência', 19.9, Color(0xfffdbe19)),
      new Task('Estabilidade', 32.2, Color(0xffff9900)),
      new Task('Conformidade', 17.8, Color(0xffdc3912)),
    ];

    var linesalesdata = [
      new Sales(0, 45),
      new Sales(1, 56),
      new Sales(2, 55),
      new Sales(3, 60),
      new Sales(4, 61),
      new Sales(5, 70),
    ];
    var linesalesdata1 = [
      new Sales(0, 35),
      new Sales(1, 46),
      new Sales(2, 45),
      new Sales(3, 50),
      new Sales(4, 51),
      new Sales(5, 60),
    ];

    var linesalesdata2 = [
      new Sales(0, 20),
      new Sales(1, 24),
      new Sales(2, 25),
      new Sales(3, 40),
      new Sales(4, 45),
      new Sales(5, 60),
    ];

    _seriesData.add(
      charts.Series(
        domainFn: (Resultados Resultados, _) => Resultados.place,
        measureFn: (Resultados Resultados, _) => Resultados.quantity,
        id: 'diag',
        data: data1,
        fillPatternFn: (_, __) => charts.FillPatternType.solid,
        fillColorFn: (Resultados Resultados, _) =>
            charts.ColorUtil.fromDartColor(Resultados.cor),
      ),

    );


    _seriesPieData.add(
      charts.Series(
        domainFn: (Task task, _) => task.task,
        measureFn: (Task task, _) => task.taskvalue,
        colorFn: (Task task, _) =>
            charts.ColorUtil.fromDartColor(task.colorval),
        id: 'Air Resultados',
        data: piedata,
        labelAccessorFn: (Task row, _) => '${row.taskvalue}',
      ),
    );

    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff990099)),
        id: 'Air Resultados',
        data: linesalesdata,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xff109618)),
        id: 'Air Resultados',
        data: linesalesdata1,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
    _seriesLineData.add(
      charts.Series(
        colorFn: (__, _) => charts.ColorUtil.fromDartColor(Color(0xffff9900)),
        id: 'Air Resultados',
        data: linesalesdata2,
        domainFn: (Sales sales, _) => sales.yearval,
        measureFn: (Sales sales, _) => sales.salesval,
      ),
    );
  }

  String _textoAtitudes =
      "\n\nATITUDES\n"+
          "\nCategoria A.\n\n"+
          "\n	A maioria de nós descobriu que há uma grande diferença entre fazer o que sabe e saber o que faz. Sabemos que a ponte para esses dois pontos é a autodisciplina, mas parece não conseguirmos atravessá-la. Ainda assim, autodisciplina é a diferença gritante entre os vencedores e os que precisam trabalhar mais. É a diferença entre aqueles que realizam e aqueles que apenas sonham. 		\n"+
          "\n	Autodisciplina é a chave para a libertação pessoal. Ela nos liberta da nossa prisão dos nossos hábitos para que possamos viver mais e melhor. Em um mundo onde frequentemente sentimos que não controlamos nada individualmente, a autodisciplina nos ajuda a definir aquela pequena parte do mundo onde podemos fazer a diferença. Onde encontramos a chave dourada para a autodisciplina? Filósofos e poetas, inventores e executivos têm procurado através dos séculos. Eles podem nos dizer apenas que ela vem de dentro. Cada um de nós deve encontrar por nós mesmos. Somos os únicos que podemos desbloquear nosso potencial e dominar as técnicas de gerenciamento de tempo por nós mesmos. 		\n"+
          "\n	Reflita sobre o que acabou de ler sobre as atitudes. Leia as afirmações na próxima página. Anote as ideias e ações necessárias para ajustar positivamente suas próprias atitudes.		\n"+
          "\n	 		\n"+
          "\n	Os Conceitos-Chave para as atitudes		\n"+
          "\n			\n"+
          "\n	•	Você nunca parece ter tempo, e ainda assim, todo tempo do mundo está ali. O problema não é a falta de tempo, mas sim, como você escolhe utilizar seu tempo útil.	\n"+
          "\n			\n"+
          "\n	•	Gerenciamento de tempo é, na verdade, um gerenciamento pessoal.	\n"+
          "\n			\n"+
          "\n	•	Provérbio Chinês: Além da nobre arte de fazer as coisas, há a arte de deixar as coisas por fazer. A da vida está em eliminar o que não é essencial.	\n"+
          "\n			\n"+
          "\n	•	Earl Nightingale: “Hábitos são a chave para o sucesso. Pessoas bem-sucedidas têm o hábito de fazer coisas que outras pessoas não gostam de fazer. ”	\n"+
          "\n			\n"+
          "\n	•	Zig Ziglar. “Quando você escolhe um hábito, você escolhe também seus resultados. ”	\n"+
          "\n			\n"+
          "\n	•	Não basta apenas saber; você deve, também, agir. Conhecimento sem ação é impotente.	\n"+
          "\n			\n"+
          "\n	•	A maioria de nós apenas muda quando é forçado. Essa força pode ser tanto interna quanto externa.	\n"+
          "\n			\n"+
          "\n	•	Se você quiser muito algo, você geralmente irá encontrar a disciplina necessária para realizar seu desejo.	\n"+
          "\n			\n"+
          "\n	•	Autodisciplina é simplesmente fazer o que você sabe que deve ser feito, independentemente se você gosta ou não.	\n"+
          "\n			\n"+
          "\n	•	Autodisciplina é mais de alcançar se você de pensar e realmente fazer algo.	\n"+
          "\n			\n"+
          "\n	•	Nada no mundo supera a persistência. 	\n"+
          "\n			\n"+
          "\n	•	Henry Ford: “Quer você pense que pode ou não fazer algo, você está certo. ”	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	MEU PLANO DE AÇÃO PARA MELHORAR ATITUDES		\n"+
          "\n	1	O (s) Velho (s) Hábito (s) que eu quero mudar ou eliminar:	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	2	O (s) novo (s) Hábito (s) que eu quero desenvolver:	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	3	Os passos que vou seguir para me certificar que estou sendo determinado:	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	4	Consistência e persistência são as únicas formas de desenvolver novos hábitos. Para evitar desviar de meus novos hábitos, e irei? 	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	5	Devo perguntar a mim mesmo: Para quem vou pedir ajuda e o que vou pedir para que eles façam?	\n"+
          "\n			\n"+
          "\n	 		\n";
//
  String _textoObjetivos =
      "\n	OBJETIVOS		\n"+
          "\n	Categoria B		\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	Não é o quanto fazemos, mas sim o que conseguimos fazer que realmente conta. Entretanto, mestres dominadores de tempo traçam objetivos claros, e focam nas atividades que os ajudarão a realizá-los.		\n"+
          "\n			\n"+
          "\n	Objetivos claros, são objetivos “espertos”. Eles seguem uma série de critérios: São específicos, mensuráveis, atingíveis, realísticos, temporizados...e escritos.		\n"+
          "\n	Duas abordagens		\n"+
          "\n	Há apenas duas formas de abordar o domínio do tempo. Você deve primeiramente focar, ou nos resultados que quer atingir, ou nas atividades que está realizando. É claro, há uma relação entre objetivos e atividades. Você não pode realizar um objetivo…você o alcança. Você realiza atividades. Se você as realiza corretamente, você irá alcançar seu objetivo.		\n"+
          "\n	Nosso foco, muitas das vezes está nas atividades. Em termos, é por conta do nosso objetivo nem sempre está claro; em partes porque foi desta forma que aprendemos a fazer. Mas, não importa a razão, há uma grande diferença entre as duas abordagens. Pessoas que focam primeiramente em seus objetivos, tendem a dominar o uso de seu tempo e realizar mais.		\n"+
          "\n	Relacione os objetivos		\n"+
          "\n	Objetivos devem estar relacionados um ao outro. A realização de objetivos diários deve levar a realizar objetivos semanais; objetivos semanais devem levar à realização de objetivos mensais; e assim por diante, até a realização de objetivos a longo prazo.		\n"+
          "\n	O comportamento diário é mais frequentemente controlado por tarefas e projetos de rotina. Esses projetos são nossos objetivos à curto prazo. Muitos de nós mantemos um controle deles fazendo uma lista de todos os trabalhos e atribuições que devemos lidar nas próximas semanas. Apenas esteja certo de que seus projetos à curto prazo o levem aos objetivos de longo prazo.		\n"+
          "\n	Desenvolva o hábito dos Resultados		\n"+
          "\n	Focar em resultados pode se tornar um hábito. Estabelecer objetivos e ter ambição para alcançá-los deve se tornar um meio de vida. Nunca faça uma ligação, uma reunião ou vá visitar alguém, sem antes pensar sobre o que você espera alcançar. Pergunte a si mesmo continuamente, sobre como aquilo que está fazendo irá te ajudar a alcançar os resultados pretendidos. Quando você para de pensar os resultados pretendidos, você se arrisca a ficar preso às atividades que não lhe ajudam a atingir os resultados desejados. Essas são conhecidas como “armadilhas”. Para desenvolver o hábito dos resultados, pense sobre o que você está tentando alcançar todos os anos, todos meses, toda semana, todos os dias, a cada hora e a cada minuto. Leia seus objetivos à longo prazo todos os dias, e use-os para te ajudar a classificar as trivialidades.		\n"+
          "\n	Tempo é vida		\n"+
          "\n	A maneira como você gasta todo o seu tempo, define quem você é. Gerenciar sua vida pessoal significa perguntar-se que tipo de vida você quer levar, que tipo de pessoa você quer ser. Mudar a forma coo você usa seu tempo, exige que você estabeleça alguns objetivos – objetivos sobre o que você quer ser e fazer.		\n"+
          "\n	Psicólogos nos dizem que objetivos são a chave para uma vida de sucesso. A razão pela qual mais e mais pessoas não são bem-sucedidas, é que elas não buscam objetivos específicos. Elas simplesmente mudam de uma atividade para a outra, sem nenhum foco ou propósito, ingenuamente assumindo que as coisas irão se resolver sozinhas ou serão resolvidas por outras pessoas. Aquilo que as pessoas mais valorizam podem ser divididas em oito áreas amplas: família, carreira, bem-estar spiritual, vida social, estabilidade financeira, saúde, desenvolvimento pessoal e lazer. Você está satisfeito com a forma como você distribui seu tempo para todas essas áreas da sua vida? A importância dos objetivos não pode ser enfatizada demais.; ela leva ao domínio do tempo. É poderosa justamente porque funciona. Considere o que você acabou de ler sobre objetivos. Reveja as afirmações a seguir. Anote quaisquer ações para clarificar seus objetivos.		\n"+
          "\n	Conceitos chave sobre Objetivos. 		\n"+
          "\n	•	Determine seus objetivos à longo prazo. Certifique-se de estar mirando naquilo que realmente quer.	\n"+
          "\n			\n"+
          "\n	•	Certifique-se de estabelecer metas inteligentes: Específicas, mensuráveis, atingíveis, realísticas e temporizadas.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	•	Não tente memorizar seus objetivos; mantenha-os escritos.	\n"+
          "\n			\n"+
          "\n	•	Leia seus objetivos à longo prazo ao menos uma vez por dia. Você vai perceber que é mais fácil de lidar com as trivialidades que aparecerem em seu caminho.	\n"+
          "\n			\n"+
          "\n	•	Você precisa de objetivos à curto prazo para saber o que fazer hoje. Você precisa de objetivos à longo prazo para poder dar continuidade e sentido aos seus objetivos à curto prazo.	\n"+
          "\n			\n"+
          "\n	•	Considere cuidadosamente os projetos. Certifique-se de que eles te levarão em direção aos seus objetivos. Identifique os passos mais críticos do processo; quando precisam ser dados e quem o fará.	\n"+
          "\n			\n"+
          "\n	•	Estabeleça prazos para todos os seus projetos. Faça uma estimativa do tempo necessário e determine o momento exato para inicia-los para evitar trabalhos de última hora.	\n"+
          "\n			\n"+
          "\n	•	Foque em seus objetivos a todo momento. Constantemente pergunte a si mesmo: “O que estou fazendo agora vai me ajudar a atingir meus objetivos? ” Se a resposta for “não”, mude para alguma atividade que lhe ajude.	\n"+
          "\n			\n"+
          "\n	•	Certifique-se de que tem ao menos um objetivo significativo todos os dias. Não pare até atingir seus objetivos diários. Em pouco tempo você desenvolverá o hábito de estabelecer metas e alcançá-las.	\n"+
          "\n			\n"+
          "\n	•	Mantenha seus objetivos à longo prazo escrito. Esforce-se para equilibrar seu tempo em todos os aspectos de sua vida.	\n"+
          "\n	MEU PLANO DE AÇÃO PARA ESTABELECER METAS.		\n"+
          "\n	1	O (s) Velho (s) Hábito (s) que eu quero mudar ou eliminar:	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	2	O (s) novo (s) hábitos (s) que quero desenvolver:	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	3	Passos que vou dar para me certificar que estou sendo determinado.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	4	Consistência e persistência são a única forma de desenvolver novos hábitos. 	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	5. Quando as condições mudam, você deve mudar seus objetivos. E uma vez que você 		\n"+
          "\n	atinge seus objetivos, certifique-se de estabelecer outros.		\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	5	A quem vou pedir ajuda e o que vou pedir para quem ele (s) faça (m).	\n"+
          "\n	 		\n";

  //
  String _textoPrioridades =
      "\n	PRIORIDADES		\n"+
          "\n	Categoria C		\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	Basicamente, estabelecer prioridades é fácil. Você estabelece um objetivo e então, determina quais atividades devem ser realizadas para atingir esse objetivo. Essas atividades são as suas prioridades principais. Realize-as antes de fazer qualquer outra coisa.		\n"+
          "\n	Quando você pensa seriamente sobre isso, não é difícil determinar como dominar seu tempo. Você sabe que deve fazer as coisas que são mais importantes; aquelas que serão uma contribuição valiosa para seus objetivos. Entretanto, nem sempre você dessa forma. Frequentemente, você prefere trabalhar nas tarefas que acha mais interessantes ou as que mais gosta. Você faz isso mesmo que essas atividades contribuam muito menos do que atividades mais difíceis e mais complexas. Quando você se examina, provavelmente você enxergue várias maneiras de como o seu tempo se encaixa de forma ineficiente.		\n"+
          "\n	Importante vs. Urgente		\n"+
          "\n	Prioridades referem-se a coisas importantes. A fim de obter melhores resultados, você precisa passar mais tempo realizando tarefas importantes. Infelizmente, muitos de nós continuam a responder, não à importância, mas sim, à urgência das coisas. Coisas importantes são aquelas que contribuem de maneira significativa para nossos objetivos – têm grande valor. Quanto mais direta é a contribuição, mais importante é a atividade. Coisas importantes também tendem a ter consequências à longo prazo. Ou seja, fazem a diferença à longo prazo. Coisas urgentes podem ter consequências à curto prazo. Elas devem ser feitas agora, pois não vão esperar. Elas podem ou não estar relacionadas aos nossos objetivos. Elas podem ou não ter uma contribuição significante. Geralmente não têm, mas coisas urgentes são muito mais atraentes do que coisas importantes.		\n"+
          "\n	Vivemos em uma tensão constante entre o urgente e o importante. Nosso problema é que coisas importantes raramente devem ser feitas hoje, ou mesmo esta semana. Coisas importantes raramente são urgentes. Coisas urgentes, entretanto, chamam a nossa atenção – fazendo exigências infinitas, aplicando pressão sobre nós todos os dias e a todo momento. Muitos de nós acreditam que, praticamente tudo o que fazemos é importante. Mesmo que isso fosse verdade, nada é verdadeiramente importante da mesma forma. Algumas coisas são muito mais importantes do que outras. Mesmo que possa ser doloroso de admitir, passamos muito tempo do nosso dia presos a atividades sem importância.		\n"+
          "\n	 		\n"+
          "\n	Cada atividade que você realize tem seu grau, tanto de importância quanto de urgência. Geralmente as atividades se dividem em quatro categorias:		\n"+
          "\n	-1	Críticas – Importantes e Urgentes; 	\n"+
          "\n	-2	Trabalho a fazer – Importante, mas não urgente; 	\n"+
          "\n	-3	Trabalho retórico—Urgente, mas não importante; 	\n"+
          "\n	-4	Irrelevante—nem importante, e nem urgente.	\n"+
          "\n	Um dos princípios-chave para dominar o tempo é entender que você sempre terá tempo para as tarefas mais importantes…mas não se você preencher seu dia de atividades sem importância. Seu desafio é decidir quais são mais importantes, e então, focar nessas atividades e ignorar, ou trabalhar paralelamente às outras.		\n"+
          "\n	O Princípio de Pareto		\n"+
          "\n	Vilfredo Pareto, um estudante do século XIX, descobriu que em cada grupo de elementos, os que são mais críticos geralmente constituem a minoria do grupo. Através dos anos, esse conceito evoluiu para a chamada “Regra 80-20”: 80% do vêm de 20% dos itens, enquanto os 20% remanescentes vêm de 80% dos itens.		\n"+
          "\n			\n"+
          "\n	Essa Regra 80-20 pode ser relacionada ao conceito importante-urgente. Coisas importantes, mas não urgentes, geralmente são parte dos 20% que contribuem para 80% dos seus resultados.		\n"+
          "\n			\n"+
          "\n	 Reflita sobre o que você acabou de ler sobre prioridades. Leia as afirmações a seguir. Anote quaisquer ações necessárias para clarificar e dominar suas prioridades. 		\n"+
          "\n	 		\n"+
          "\n	Conceitos chave sobre Prioridades. 		\n"+
          "\n			\n"+
          "\n	•	Pense cuidadosamente sobre o que as prioridades significam para você…sobre como você decide o que é realmente importante. Lembre-se: você nunca terá tempo para fazer tudo, mas você terá tempo para as coisas mais importantes.	\n"+
          "\n			\n"+
          "\n	•	Regra 80-20: 80% do valor vêm dos 20% de itens, enquanto 20% do valor, vêm de 80% dos itens. 	\n"+
          "\n			\n"+
          "\n	•	A maioria das pessoas começam pelas tarefas rápidas, fáceis e prazerosas. Ao invés disso, comece pelas tarefas importantes.	\n"+
          "\n			\n"+
          "\n	•	Só porque uma coisa é urgente, não significa que seja importante. Atividades importantes são aquelas que te ajudam a alcançar seus objetivos.	\n"+
          "\n			\n"+
          "\n	•	Aprenda a distinguir o importante e o urgente.	\n"+
          "\n			\n"+
          "\n	•	Não permita que as trivialidades sejam maiores do que o que é importante.	\n"+
          "\n			\n"+
          "\n	•	Nem sempre faça o que outras pessoas pedem detrimento de suas próprias tarefas de prioridade. Saiba quando dizer não. Faça logicamente, com firmeza e tato.	\n"+
          "\n			\n"+
          "\n	•	Trocar prioridades constantemente geralmente resulta em falha na hora de estabelecer prioridades apropriadas. A melhor forma de estabelecer prioridades consiste em se basear pelo que for mais importante.	\n"+
          "\n			\n"+
          "\n	•	Não troque de prioridades constantemente só porque outras pessoas querem que você o faça. Seja muito cuidadoso em saber “quais engrenagens precisam de um pouco mais de graxa. ”	\n"+
          "\n	 		\n"+
          "\n	MEU PLANO DE AÇÃO PARA ESTABELECER PRIORIDADES		\n"+
          "\n	1	O (s) velho (s) hábito (s) que quero mudar ou eliminar: 	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	2	O (s) Novo (s) hábito (s) que quero desenvolver:	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	3	Os passos que vou dar para ter certeza que estou determinado:	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	4	Consistência e persistência são a única forma desenvolver novos hábitos:	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	5	Para quem devo pedir ajuda e o que vou pedir para que façam:	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	6	Minhas prioridades para esta semana, para este mês, para este ano:	\n"+
          "\n	 		\n";
  //
  String _textoAnalise =
      "\n	ANÁLISE		\n"+
          "\n	Categoria D		\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	Há um antigo provérbio que diz: “Quanto mais você fizer o que está fazendo, mais você receberá o que está recebendo.”.		\n"+
          "\n	Se quiser melhores resultados, você tem de mudar a forma como gasta seu tempo. O problema é que muitos de nós não sabem ao certo onde gastamos nosso tempo.		\n"+
          "\n	Se você for como a maioria das pessoas, você acha que sabe mais sobre como gasta seu tempo do que realmente sabe. Acreditamos que nossa memória é suficientemente boa para fazermos um levantamento de tempo preciso das tarefas que executamos. Entretanto, de tempos em tempos, as pessoas percebem que estão erradas quando submetidas ao teste. Eis uma verdade: ninguém consegue realmente dominar o uso do tempo até que saibam como usar seu tempo hoje. Você espera que um médico receite um medicamento sem lhe dar um diagnóstico? O mesmo vale para você. Você não pode “receitar uma cura para o uso do tempo” sem antes diagnosticar os problemas.		\n"+
          "\n	Controle de Hábitos		\n"+
          "\n	São nossos hábitos que determinam muito do que fazemos diariamente. Hábitos, entretanto, podem tanto nos ajudar, quanto nos prejudicar. Depende do hábito.		\n"+
          "\n	O comportamento habitual consome muito do nosso tempo. Geralmente esse comportamento é inconsciente. Apesar de podermos afirmar que sabemos onde nosso tempo é gasto, infinitos estudos têm demonstrado que precisamos de mais certeza sobre o que realmente está acontecendo. Além disso, por conta da nossa falha em perceber o uso preciso de nosso tempo, sempre imaginamos que isso esteja fora do nosso controle. Sem dúvida, em partes, está fora do nosso controle, mas ainda há muito o que se fazer com aquilo que temos controle.		\n"+
          "\n	Antes de podermos controlar nosso tempo, porém, devemos entender como ele está realmente sendo utilizado. Devemos aceitar o fato que nós somos a maior causa de nossos problemas, não importa o quanto desejamos encontrar outro culpado. Precisamos também conhecer que as soluções para muitos de nossos problemas vêm de dentro de nós mesmos, e não de fontes externas.		\n"+
          "\n	O ponto é: tudo o que você faz, o dia todo, pode te ajudar a te mover em direção ao seu objetivo ou não. Se não ajuda, atrapalha. Você quer evitar coisas que atrapalhem, se possível.		\n"+
          "\n	Mantenha um registro de tempo.		\n"+
          "\n	Registrar seu tempo é a melhor maneira de saber como exatamente você o gasta. Você vai descobrir muitos dos seus hábitos de tempo nesse processo. Entender esses padrões torna mais fácil a tarefas de criar novos padrões que irão resultar em um bom domínio do seu tempo.		\n"+
          "\n	Você pode também usar seu registro de tempo para responder à pergunta: “quem controla meu tempo? ” Reveja cada uma das tarefas listadas e pergunte a si mesmo se ela representa tempo controlado. Atenção nesse ponto é importante. É muito fácil afirmar que outra pessoa está controlando seu tempo quando você tem uma ampla autonomia para exercer uma atividade.		\n"+
          "\n	Volte ao Tempo Investido.		\n"+
          "\n	A palavra japonesa “kaizen” resume bem o raciocínio de análise de tempo. Kaizen significa: crescimento e aprimoramento contínuos. Sejam quais forem nossos hábitos de tempo, não os adquirimos do dia para a noite. Nós também não podemos mudá-los do dia para a noite. O ponto importante é, porém, que podemos mudar. Se observar continuamente, você irá encontrar mais e mais formas de melhorar. Essa é a ideia de como analisar e dominar seu tempo.		\n"+
          "\n	Conceitos chave sobre análise do tempo.		\n"+
          "\n	•	Tudo o que você faz pode tanto ajudar ou atrapalhar. Uma vez que seu tempo é usado, não pode mais ser recuperado.	\n"+
          "\n			\n"+
          "\n	•	A chave é certificar-se das atividades consistentes com seus objetivos.	\n"+
          "\n			\n"+
          "\n	•	Mantenha um registro de como você gasta seu tempo ao pôr uma semana durante um ano. Um mês seria ainda melhor. Descubra o que fazer, quando fazer e por que fazer.	\n"+
          "\n			\n"+
          "\n	•	Pergunte à outras pessoas como você gasta seu tempo, ou como você pode usá-lo de uma maneira melhor. Talvez eles enxerguem algo que você não esteja conseguindo.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	•	Pratique o kaizen. Esforce-se para continuar melhorando.	\n"+
          "\n			\n"+
          "\n	•	Regularmente examine os procedimentos dos trabalhos que estiver desenvolvendo. Quais são os passos envolvidos? Quem os dá? Quando são dados? Algum desses passos pode ser eliminado, reduzido ou simplificado?	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	•	Pergunte aos seus parceiros, equipe ou time para que te discutam sobre novas ideias. Sempre procure eliminar passos, combinar operações, encurtar procedimentos, agilize a papelada e remova os “estrangulamentos”.	\n"+
          "\n			\n"+
          "\n	•	Não se altere sob algo que não seja realmente uma crise. Não invista mais tempo e energia em uma situação que não vale a pena. Use a grade urgente/importante mostrada anteriormente como guia.	\n"+
          "\n			\n"+
          "\n	•	Mantenha registro de suas crises. Analise-as, procure padrões. Elas são recorrentes ou casos isolados? Alguma delas pode ser prevista? 	\n"+
          "\n			\n"+
          "\n	•	Se você se depara com crises recorrentes, descubra porque as coisas continuam dando errado, e conserte-as. Muitas crises recorrentes são causadas por mau planejamento, má coordenação ou acompanhamento falho.	\n"+
          "\n	MEU PLANO DE AÇÃO PARA MELHORAR A ANÁLISE		\n"+
          "\n	1	O (s) velho (s) hábito (s) que quero mudar ou eliminar. 	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	2	O (s) novo (s) hábito (s) que quero desenvolver	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	3	Passos que vou seguir para ter certeza de que estou determinado.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	4	Consistência e persistência são a única forma de desenvolver novos hábitos.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	5	Para quem vou pedir ajuda e o que vou pedir para que faça.	\n"+
          "\n			\n";
  //
  String _textoPlanejamento =
      "\n	PLANEJAMENTO		\n"+
          "\n	Categoria E		\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	Todos admitem que o planejamento é importante, mas poucos realmente passam o devido tempo planejando suas atividades. Muitos alegam que não têm tempo para planejar. De qualquer forma, planejar é um hábito. Pessoas que traçam planos de ação regularmente dominam a arte de planejar. Simplesmente se porta parte de uma rotina comum. Encontrar tempo deixa de ser um problema.		\n"+
          "\n	Muitos de nós falha ao planejar porque somos movidos a ações e não a planos. Preferimos estar no meio das coisas, simplesmente fazendo ao invés de pensar. Como resultado, reagimos ao que acontece ao nosso redor. Planejar é a única maneira de quebrar os padrões de ração.		\n"+
          "\n	Assuma o controle		\n"+
          "\n	Planejar é uma tentativa de controlar o máximo possível do seu tempo. Mas lembre-se de que você não pode controlar tudo. Algumas coisas estão simplesmente fora do seu controle.		\n"+
          "\n	De qualquer forma, se você não conseguir controlar o tempo que tem, você irá diminuir a sua efetividade. Quer você trabalhe durante uma ou oito horas por dia, é irrelevante. A ideia é controlar qualquer tempo que tiver para que você consiga dedicar o máximo de tempo possível em tarefas importantes.		\n"+
          "\n	Planeje seu trabalho e seu tempo.		\n"+
          "\n	A chave para um planejamento bem-sucedido é planejar tanto trabalho quanto tempo. Simplesmente faça essas seis perguntas.		\n"+
          "\n	1	Resultados — Quais são meus objetivos? O que eu espero realizar?	\n"+
          "\n	2	Atividades — O que eu terei de fazer para alcançar esses resultados?	\n"+
          "\n	3	Prioridades — Quais são as prioridades envolvidas?	\n"+
          "\n	4	Tempo estimado – Quanto tempo cada atividade exige?	\n"+
          "\n	5	Cronograma — Quando eu realizo cada atividade?	\n"+
          "\n	6	Flexibilidade — Quanta flexibilidade eu devo me permitir para as situações que não posso controlar?	\n"+
          "\n	As três primeiras perguntas formam um plano de trabalho. As últimas três questões formar um planejamento de tempo. Você precisa de ambos.		\n"+
          "\n	Planejamento Diário e Semanal		\n"+
          "\n	Uma lista de afazeres diários é o tipo de planejamento de tempo mais comum hoje em dia. Embora o planejamento diário ainda valha a pena, planejamento semanal é ainda melhor. Ele proporciona uma perspectiva mais ampla e permite mais espaço para opiniões. Você pode usar as mesmas seis perguntas para desenvolver um planejamento diário ou semanal.		\n"+
          "\n	Para preparar um planejamento semanal, faça as seis perguntas básicas sobre planejamento para a próxima semana. Se possível, faça isso ao final da semana anterior. Por exemplo, você pode ter um tempo livre na sexta-feira à tarde ou talvez no fim de semana. Preparar um planejamento semanal leva em torno de 30 minutos para a maioria das pessoas, mas permite que a pessoa recupere ao menos uma hora por dia da próxima semana. Uma hora extra – talvez mais – para trabalhos importantes poderá produzir resultados memoráveis em quase todo tipo de trabalho. Reflita sobre o que acabou de ler sobre planejamento. Leia as afirmações a seguir. Anote quaisquer ações necessárias para melhorar seu planejamento de tempo. 		\n"+
          "\n	Conceitos chave sobre Planejamento.		\n"+
          "\n	•	Para melhorar seu planejamento, faça as seis perguntas:	\n"+
          "\n	-1	Quais resultados eu pretendo atingir?	\n"+
          "\n	-2	O que devo fazer para atingir esses resultados?	\n"+
          "\n	-3	Quais são as prioridades?	\n"+
          "\n	-4	Quanto tempo cada atividade exige? 	\n"+
          "\n	-5	Quando vou realizar cada atividade?	\n"+
          "\n	-6	Quanto flexibilidade devo ter para as coisas que não posso controlar?	\n"+
          "\n			\n"+
          "\n	•	Flexibilidade é a chave para um planejamento bem-sucedido. Permite que haja tempo para situações inesperadas que você não pode controlar, como interrupções, problemas e crises.	\n"+
          "\n			\n"+
          "\n	•	Seja cauteloso para alterar seu plano de ação diante do inesperado. Uma resposta bem pensada geralmente é melhor do que apenas reagir a certo eventos.	\n"+
          "\n			\n"+
          "\n	•	Escreve um plano para cada semana. Um momento excelente para se fazer isso é uma sexta-feira à tarde, antes de sair do trabalho. Peça para que outras pessoas façam o mesmo. 	\n"+
          "\n			\n"+
          "\n	•	Encontre-se com as pessoas certas para rever os planos para a próxima semana, e coordene prioridades e atividades. Certifique-se que sua lista de tarefas diárias possua as prioridades e estimativa de tempo. Você fica sem tempo, mas não fica sem trabalho.	\n"+
          "\n			\n"+
          "\n	•	Certifique-se de que seus prazos e estimativas de tempo são realísticos. Não os ignore. 	\n"+
          "\n			\n"+
          "\n	•	Aprenda a controlar seus impulsos diante de acontecimentos não planejados.	\n"+
          "\n			\n"+
          "\n	•	Esteja preparado para um início produtivo amanhã de manhã. Organizes suas coisas hoje antes de sair para que elas estejam prontas amanhã quando voltar.	\n"+
          "\n	MEU PLANO DE AÇÃO PARA MELHORAR O PLANEJAMENTO		\n"+
          "\n	1	O (s) velho (s) hábito (s) que quero mudar ou eliminar:	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	2	O (s) Novo (s) hábito (s) que quero desenvolver:	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	3	Os passos que vou dar para ter certeza que estou determinado:	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	4	Consistência e persistência são a única forma de desenvolver novos hábitos:	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	5	Para quem devo pedir ajuda e o que vou pedir para que façam:	\n";
  //
  String _textoAgendamento =
      "\n	AGENDAMENTO		\n"+
          "\n	Categoria F		\n"+
          "\n	Muitas pessoas utilizam os termos “planejamento” e “agendamento” indiferentemente. Na verdade, elas estão se referindo a duas atividades diferentes. Planejamento é decidir o que fazer. Agendamento é decidir quando fazer. Planejamento é simplesmente decidir o melhor momento para realizar as atividades.		\n"+
          "\n	Agendamento, dizem, simplesmente não é possível de ser feito. As coisas não funcionam da maneira que deveriam. Você não pode antecipar o que vai acontecer em determinado dia. A verdade é que, ao menos metade das coisas que você coloca em uma agenda, provavelmente irá funcionar exatamente conforme o esperado. Quanto mais você trabalha em algo, mais você o domina. Quanto mais você usa sua agenda, mais você aprende a agenda suas tarefas com sucesso.		\n"+
          "\n	Agendamento é o segredo para fazer as coisas acontecerem. Planejamento é uma intenção; agendamento é um compromisso. Tarefas agendadas, tendem a acontecer e acontecer dentro do prazo. Coisas que não são agendadas podem nunca acontecer. Se você quer que aconteça, agende.		\n"+
          "\n	Mantenha a Flexibilidade		\n"+
          "\n	O maior erro que as pessoas cometem ao agendar tarefas, é alocar cada minute do seu tempo. De qualquer forma, você raramente pode controlar todo o seu dia. Há muitas coisas que podem tomar seu tempo. Você precisa deixar espaço para o inesperado quando estiver montando a sua agenda. Por exemplo, a maioria das pessoas sabem que serão interrompidas durante o dia, mas poucas se preparam verdadeiramente para as interrupções. Lembre-se: interrupções fazem parte do seu trabalho. Se planejar para possíveis interrupções, deixa espaço para elas em sua agenda.		\n"+
          "\n	Agende um “Tempo Quieto”		\n"+
          "\n	Se você trabalha em um escritório, uma torrente infinita de interrupções dificulta que as coisas sejam feitas. Começar, parar e recomeçar uma tarefa, acaba se tornando um padrão que estica seus trabalhos além do necessário. Geralmente, isso reduz a qualidade do seu trabalho. Você completa apenas metade do que você deveria fazer durante o dia. Um “tempo quieto” pode mudar muito disso.		\n"+
          "\n	Tempo quieto é simples: crie um bloco ininterrupto de tempo em que você possa se concentrar totalmente em seu trabalho. Isso normalmente significa desligar seu celular e bloquear visitas inesperadas por um tempo. Encontre uma sala de reuniões vazia, desligue seu telefone, feche a porta, vá para a biblioteca ou peça ajuda para quem trabalha na mesma área que a sua. Um grande benefício é que em uma hora do seu “tempo quieto” você tanto quanto, ou até mais do que em três horas utilizando seu tempo regular.		\n"+
          "\n	Comece cedo		\n"+
          "\n	Todo mundo sabe que começar cedo é um bom caminho para dominar o tempo, mas mesmo assim, nem sempre começamos cedo. De qualquer forma, tenha um início bom e produtivo e você estará mais apto a ter um dia bem-sucedido e produtivo. Comece mal e você vai passar o dia correndo atrás do prejuízo. 		\n"+
          "\n	Começar cedo pode ter três significados diferentes. Primeiro, pode significar o dia mais cedo. Muitas pessoas entendem que essa atitude é benéfica. Segundo, pode significar começar a fazer suas tarefas assim que chega em seu trabalho. Não desperdice a primeira hora do seu dia tomando café, conversando ou lendo jornal. Terceiro, pode significar começar seus projetos antes do que normalmente você começaria tendo assim uma boa margem de tempo. 		\n"+
          "\n	A chave para o agendamento é acreditar que há tempo e lugar para tudo. Agendar lhe permite operar de maneira proposital ao invés de uma maneira aleatória. Você será mais apto a realizar mais em menos tempo e terá mais tempo sobrando para você fazer outras coisas que também são importantes.		\n"+
          "\n	Reflita sobre o que você acabou de ler e reveja as afirmações a seguir. Anote quaisquer ações necessárias para melhorar seus hábitos de agendamento.		\n"+
          "\n	Conceitos chave sobre agendamento 		\n"+
          "\n	•	Nada jamais acontecerá na sua vida, a não ser que você dê oportunidades para que as coisas aconteçam. Isso significa “agendamento”	\n"+
          "\n			\n"+
          "\n	•	Agende as atividades mais importantes para cada dia. Isso significa simplesmente determine o melhor momento para realize-las. Tarefas agendadas estão mais aptas a acontecer. 	\n"+
          "\n			\n"+
          "\n	•	Não se preocupe em deixar espaços longos de tempo para trabalhos importantes. Agende um “tempo quieto” para que você não seja interrompido. 	\n"+
          "\n			\n"+
          "\n	•	Prepare a agenda de amanhã antes de sair do trabalho hoje. Você vai dormir melhor e não correr o risco de iniciar seu dia apenas reagindo ao que acontece antes de considere o que é realmente importante.	\n"+
          "\n			\n"+
          "\n	•	Faça uma lista de pequenos minis trabalhos que tomem apenas alguns minutes. Quando você tiver espaços de tempo livres, faça esses minis trabalhos ao invés de desperdiçar esse tempo.	\n"+
          "\n			\n"+
          "\n	•	Agrupe itens e ações sempre que possível.	\n"+
          "\n			\n"+
          "\n	•	Certifique-se de permitir tempo suficiente para cada atividade.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	•	A maioria das pessoas são muito otimistas. Elas não se permitem ter tempo suficiente e normalmente começam seu trabalho tarde. Como resultado, seus trabalhos são mais frenéticos e com maior pressão do que precisariam ser.	\n"+
          "\n			\n"+
          "\n	•	Estabeleça limites para tudo o que faz. Tente terminar tudo dentro do tempo estimado.	\n"+
          "\n			\n"+
          "\n	•	Sempre que possível, marque hora para ver as pessoas. Ligue com antecedência e confirme se elas poderão lhe atender.	\n"+
          "\n			\n"+
          "\n	•	Agende um momento para falar com pessoas importantes para os seus projetos.	\n"+
          "\n			\n"+
          "\n	•	Identifique seu melhor momento, onde você está no seu melhor e seu trabalho também é melhor.	\n"+
          "\n			\n"+
          "\n	•	Tente estabelecer um tempo paralelo para projetos importantes, tomar decisões importantes ou fazer um trabalho criativo.	\n"+
          "\n			\n"+
          "\n	•	Agende seu tempo para que as coisas sejam feitas de primeira. Assim você não vai desperdiçar tempo com retrabalho.	\n"+
          "\n	MEU PLANO DE AÇÃO PARA MELHORAR O AGENDAMENTO		\n"+
          "\n	1	Os velhos hábitos que quero mudar ou eliminar	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	2	Os novos hábitos que quero desenvolver	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	3	Passos que devo seguir para ter certeza de que estou determinado.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	4	Consistência e persistência são a única forma de desenvolver novos hábitos.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	5	A quem devo pedir ajuda e o que devo pedir para que façam?	\n"+
          "\n			\n"+
          "\n			\n";
  //
  String _textoInterrupcoes =
      "\n	INTERRUPÇÕES		\n"+
          "\n	CATEGORIA G		\n"+
          "\n			\n"+
          "\n	Perceba que as interrupções são parte do seu trabalho e que talvez seja a sua atitude que precise de ajustes. Quando interrompido, muitos de nós ficam um tanto ou quanto irritados; nós não gostamos de ter que parar o que estamos fazendo e focar em outra coisa. Atenciosamente, tente enxergar as interrupções de uma forma diferente. Ao invés de ficar irritado quando for interrompido, pense simplesmente como parte do seu trabalho. Você ficara menos frustrado e mais apto a ter o controle da situação.		\n"+
          "\n	Perceba também, porém, que você não vai ter total controle das interrupções. Quando você trabalha com pessoas, você deve se prepare para ações imprevisíveis. A ideia básica é aceitar o incontrolável e controlar o controlável.		\n"+
          "\n	A chave é permitir tempo suficiente em sua agenda para o inesperado. Se você permitir a flexibilidade para as interrupções, você não vai ficar tão frustrado quando elas ocorrerem. Se você não se permitir uma flexibilidade adequada na sua agenda, suas interrupções vão acontecer da mesma forma, e suas frustrações vão aumentar.		\n"+
          "\n	Analise as Interrupções.		\n"+
          "\n	A abordagem simples mais usada para reduzir as interrupções é manter um registro. Anote quem lhe interrompe, quando, quanto tempo leva e do que se trata. Procure padrões entre as interrupções. Não importa qual seja o padrão, sabendo que tipos de interrupção você tem, te coloca à frente. Você não pode solucionar um problema até que você o identifique. 		\n"+
          "\n			\n"+
          "\n	Todo mundo sofre com interrupções. A maioria de nós reclama constantemente sobre elas, mas faz muito pouco. Seria muito melhor analisá-las e sistematicamente trabalhar para controlá-las. Nas palavras dos antigos filósofos gregos: “é melhor acender uma vela do que lamentar a escuridão”.		\n"+
          "\n	Mantenha as coisas juntas.		\n"+
          "\n	Algumas das suas interrupções são importantes, mas a maioria é mera rotina. Tempo não é crucial para muitas questões de rotina. Precisam ser feitas, mas não precisa ser agora.		\n"+
          "\n	Para garantir melhores resultados, peça para que as pessoas deixem o que for rotina para ser feito tudo de uma única vez. Você agrupa suas rotinas também.		\n"+
          "\n	Agende um momento para se reunir com pessoas importantes para seu projeto. Incentive as pessoas a estabelecer encontros ao invés de apenas aparecerem de surpresa. Uma simples reunião diária ou seminal pode fazer milagres na sua agenda.		\n"+
          "\n	Evite telefones		\n"+
          "\n	Telefones são importantes. Todos sabemos disso. Estudos apontam, entretanto, que cerca de metade das ligações comercias não são sobre negócios. Mesmo ligações que comecem uma conversa sobre trabalho, normalmente tomam outro rumo. Conversas malconduzidas levam a não realizar muito.		\n"+
          "\n	Reduza a socialização		\n"+
          "\n	Socialização é como aspirina: um pouco ajuda muito, mas muito pode ser fatal. Nós precisamos conversar com outras pessoas. Comunicação é a graxa social que mantém tudo funcionando corretamente. A questão é mais sobre o grau de socialização. Nós queremos continuar com a parte necessária da socialização e parar com a parte desnecessária. Aprenda a reconhecer suas interrupções pelo que elas são. A socialização pode ser reduzida sem se tornar um antissocial.		\n"+
          "\n	Interrupções são Pessoas		\n"+
          "\n	Enquanto trabalhamos juntos, haverá interrupções. Elas são parte do nosso trabalho, mas isso não significa que devemos ficar à mercê de quaisquer interrupções que aparecem. Pratique técnicas de prevenção e redução sempre que puder. Reflita sobre o que você acabou de ler e reveja as afirmações a seguir. Anote quaisquer ações necessárias para melhorar seus hábitos antes as interrupções.		\n"+
          "\n	Conceitos chave sobre Interrupções		\n"+
          "\n	•	Interrupções são parte do seu trabalho. São mais fáceis de lidar quando você tem uma atitude positive frente a elas.	\n"+
          "\n			\n"+
          "\n	•	Mantenha um registro das suas interrupções. Descubra que o interrompe, quando, quanto tempo leva e o motivo. Procure padrões.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	•	Permita tempo suficiente em sua agenda diária para as interrupções. 	\n"+
          "\n			\n"+
          "\n	•	Mantenha as suas interrupções sob controle o máximo que conseguir e você resolverá metade dos seus problemas.	\n"+
          "\n			\n"+
          "\n	•	Considere alternativas, como e-mails, mensagens de voz, etc.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	•	Agrupe tarefas e lide com elas em uma única ligação ou visita.	\n"+
          "\n			\n"+
          "\n	•	Levante-se sempre que alguém entrar em sua sala ou quando atender o telefone. 	\n"+
          "\n			\n"+
          "\n	•	Levantar lhe permite uma melhor posição para controlar quanto tempo a interrupção vai demorar. Você pode começar a andar pela sala (ou dizer à pessoa que ligou que você tem que desligar) para que rapidamente você conclua a interação.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	•	Interrompa o “papo furado” o quanto antes. Vá direto ao ponto e permaneça lá.	\n"+
          "\n			\n"+
          "\n	•	Estabeleça um tempo “quieto” quando não quiser ser interrompido.	\n"+
          "\n			\n"+
          "\n	•	Em trabalhos externos, reduza o volume do telefone.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	•	Socialização é como aspirina: pouco ajuda muito e muito pode ser fatal. Não pense que toda conversa vale a pena.	\n"+
          "\n			\n"+
          "\n	•	Após a interrupção, volte diretamente para a tarefa que estava executando. Não use a interrupção como desculpa para focar em outra coisa.	\n"+
          "\n	MEU PLANO DE AÇÃO PARA MELHORAR MEU CONTROLE DE INTERRUPÇÕES		\n"+
          "\n	1	Os velhos hábitos que quero mudar ou eliminar	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	2	Os novos hábitos que quero desenvolver	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	3	Passos que devo seguir para ter certeza de que estou determinado.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	4	Consistência e persistência são a única forma de desenvolver novos hábitos.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	5. A quem devo pedir ajuda e o que devo pedir para que façam?		\n";
  //
  String _textoReunioes =
      "\n	REUNIÕES		\n"+
          "\n	Categoria H		\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	A maioria das pessoas reclama que reuniões são, na maior parte das vezes, um desperdício de tempo. Não reclamam sobre reuniões eficientes, eles aproveitam. É apenas as não produtivas que causam desconforto. 		\n"+
          "\n	O seguinte aviso costumava ficar pendurado na parede de uma empresa: 		\n"+
          "\n	“Inteligência não substitui a informação.		\n"+
          "\n	Entusiasmo não substitui habilidade.		\n"+
          "\n	Força de vontade não substitui experiência. ”		\n"+
          "\n			\n"+
          "\n	Até que um dia alguém adicionou uma nova linha:		\n"+
          "\n	“E uma reunião não substitui um progresso”		\n"+
          "\n			\n"+
          "\n	Aqui há algumas razões para comuns para perder tempo em reuniões:		\n"+
          "\n	•	Sem propósito real; 	\n"+
          "\n	•	Objetivos ambíguos;	\n"+
          "\n	•	Presença de pessoas erradas;	\n"+
          "\n	•	Falta de agenda; 	\n"+
          "\n	•	Pessoas despreparadas;	\n"+
          "\n	•	Agenda que não é seguida;	\n"+
          "\n	•	Muitas pessoas presentes;	\n"+
          "\n	•	Começo e fim com atraso;	\n"+
          "\n	•	Nenhuma decisão ou resultado;	\n"+
          "\n	•	Acompanhamento falho.	\n"+
          "\n	Quem é responsável?		\n"+
          "\n	Quando reuniões são um desperdício de tempo, geralmente todos os envolvidos dividem a culpa. As pessoas encarregadas não estão desempenhando seu trabalho corretamente. E quem participa da reunião também não está fazendo sua parte. É necessário um comportamento eficaz de todos os envolvidos para que a reunião funcione de acordo com seu propósito. De qualquer forma, o responsável pela reunião deve liderar e conduzir com responsabilidade.		\n"+
          "\n			\n"+
          "\n	Diferentes pessoas reagem ao fato de serem encarregadas por uma reunião de maneiras diferentes. Algumas veem como oportunidades de dominar o grupo. Outras se apegam apenas ao conceito social de reunião, com pouca efetividade no cumprimento ou planejamento de tarefas. Outras apenas usam a reunião apenas para justificar sua inatividade. A maioria, entretanto, realmente deseja fazer realizar algo efetivo, mas podem não saber como. Ironicamente, enquanto todas as organizações precisam de reuniões produtivas, apenas uma parte delas faz algo para ensinar as pessoas a dominar as habilidades necessárias para planejar e conduzir boas reuniões.		\n"+
          "\n	Todos se beneficiam.		\n"+
          "\n	De todos os desperdícios de tempo, as reuniões são, talvez, as mais fáceis de resolver. E eliminar desperdício de tempo em reuniões provavelmente pode ser mais benéfico para as pessoas do que resolver os desperdícios de tempo um por um. É preciso um pouco de esforço, mas os benefícios são atrativos: eleva o moral, uso produtivo e economia de tempo. Reflita sobre o que você acabou de ler e reveja as afirmações a seguir. Anote quaisquer ações necessárias para melhorar seus hábitos antes as reuniões.		\n"+
          "\n	Conceitos chave sobre Reuniões		\n"+
          "\n	•	Esclareça o propósito da reunião. Certifique-se de que ela é realmente necessária. Comunicação unilateral não necessita de reunião.	\n"+
          "\n	 		\n"+
          "\n	•	Considere alternativas para as reuniões, tais como um memorando ou uma videoconferência.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	•	Sempre que precisar conduzir uma reunião, faça uma agenda e mantenha-se fiel a ela.	\n"+
          "\n			\n"+
          "\n	•	Convoque apenas aquelas pessoas cuja a participação é realmente necessária e mostre a elas como contribuir.	\n"+
          "\n			\n"+
          "\n	•	Identifique um resultado específico a ser atingido para cada item da sua agenda.	\n"+
          "\n			\n"+
          "\n	•	Estabeleça um limite de tempo para cada item na agenda. Fique atento aos itens mais importantes, pois eles tendem a tomar mais tempo.	\n"+
          "\n			\n"+
          "\n	•	Prepare-se para a reunião.	\n"+
          "\n			\n"+
          "\n	•	Estabeleça um limite de tempo. Comece na hora e termine na hora.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	•	Permita que as pessoas entrem ou saiam da sala de acordo com a necessidade de sua contribuição.	\n"+
          "\n			\n"+
          "\n	•	Mantenha o controle da reunião. Evite desvios de foco. Mantenha-se fiel à sua agenda.	\n"+
          "\n			\n"+
          "\n	•	Reduza o número de participantes. Você não vai atingir seus objetivos mais rápido utilizando mais do que 5 ou 8 pessoas.	\n"+
          "\n	•	Tente conduzi uma reunião onde todos fiquem em pé. Você vai fazer mais em menos tempo.	\n"+
          "\n			\n"+
          "\n	•	Resuma os resultados da reunião. Esclareça ou reveja as atribuições.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	•	Prepare um plano de ação a ser seguido. Anote o que deve ser feito, quem o fará e quando será feito. Entregue uma cópia aos participantes ao final da reunião.	\n"+
          "\n			\n"+
          "\n	•	Tome alguns minutos ao final da reunião para debater quanto à qualidade da reunião. Converse e concorde com formas de aprimorar as próximas reuniões.	\n"+
          "\n	MEU PLANO DE AÇÃO PARA MELHORAR AS REUNIÕES		\n"+
          "\n	1	Os velhos hábitos que quero mudar ou eliminar	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	2	Os novos hábitos que quero desenvolver	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	3	Passos que devo seguir para ter certeza de que estou determinado.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	4	Consistência e persistência são a única forma de desenvolver novos hábitos.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	5. A quem devo pedir ajuda e o que devo pedir para que façam?		\n"+
          "";
  //
  String _textoDocumentacao =
      "\n	DOCUMENTAÇÃO		\n"+
          "\n	Categoria I		\n"+
          "\n			\n"+
          "\n	Papelada é um problema! E fica cada vez pior, nunca melhor. Cartas para ler e escrever. Memorandos para enviar e receber. Relatórios para preparar, ler e arquivar. E o correio nunca para. Para muitos de nós, a papelada se sobrepõe ao nosso tempo pessoal. Parece que nunca conseguimos acabar com a papelada então levamos para casa.		\n"+
          "\n	Documentação é permanente.		\n"+
          "\n	Documentação é o “sangue na veia” de qualquer empresa. Sem ela, não existiríamos, não conduziríamos os negócios ou até morreríamos. É a essência da comunicação. Mas ela cresce de uma forma que acaba também criando uma sobrecarga de informação.		\n"+
          "\n	Há até uma Lei de Desordem: A desordem se expande para preencher o espaço vazio. Nós acabamos rindo disso, mesmo que não haja motivos para isso. Desordem confunde e até cria hábitos de mau uso da papelada.		\n"+
          "\n	Psicologia do Papel		\n"+
          "\n	Apesar de reclamarmos sobre ela, raramente fazemos algo para reduzi-la. Em partes, essa relutância é o elo entre nossa falha e o entendimento da natureza do papel.		\n"+
          "\n	Toda papelada é carregada de significados ocultos. Isso pode ser utilizado para compensar falta de habilidade, na esperança de que seu grande volume traga os resultados desejados. Pode se tornar um escape à realidade. Geralmente é um símbolo de poder. A papelada pode ser também um tremendo refúgio. Nos sentimos seguros com uma vasta papelada ao nosso redor; nus e vulneráveis com a sua ausência. Justificamos a nossa existência através da quantidade de papel que produzimos. Até mesmo o seu valor e sua contribuição para a empresa pode ser medidos através da papelada.		\n"+
          "\n	Papel é a essência do nosso trabalho. Simplesmente não há coo escapar. Por ser tão comum, aceitamos como algo normal. Nós somos condicionados desde a infância a considerar o papel como algo “bom”.		\n"+
          "\n	Hábitos de Documentação		\n"+
          "\n	Papel é necessário para fazer as coisas acontecerem. Mas também é de alguma forma igual comida. Um pouco é essencial, mas muito pode te deixar doente. A chave parece mesmo ser manter o nível sempre, percebendo que o papel é apenas um meio para um fim, e não o fim de tudo.		\n"+
          "\n	Assim como muitas outras coisas, o comportamento com a documentação é um hábito. Provavelmente não nos damos conta exatamente do volume que realmente lidamos, ou quanto impomos a outros. Mas assim coo criamos o hábito de ser “reféns” da papelada, podemos também criar o hábito de os libertar dela.		\n"+
          "\n	Papelada pode ser inevitável, mas ficar atolado a ela não. Podemos aprender a cortar o que não é necessário e os concentrar apenas na papelada que nos ajuda em nossos objetivos.		\n"+
          "\n	 Reflita sobre o que você acabou de ler e reveja as afirmações a seguir. Anote quaisquer ações necessárias para melhorar seus hábitos antes a sua documentação.		\n"+
          "\n	Conceitos chave sobre Documentação		\n"+
          "\n	•	Há apenas quarto coisas que você pode fazer com a sua papelada: jogar for a, delegar, executar ou atrasar.	\n"+
          "\n	•	Analise sua documentação para ver o que pode ser eliminado, encurtado, modificado, combinado ou melhorado.	\n"+
          "\n	•	Alinhe a papelada que estiver chegando: ação, leitura, arquivamento ou lixo.	\n"+
          "\n	•	Desenvolva critérios que o ajude a decidir o que manter e o que jogar fora.	\n"+
          "\n	•	Para gerenciar sua mesa, faça três perguntas para cada folha de papel sobre ela: 	\n"+
          "\n	o	Eu vou realmente fazer algo com isso?	\n"+
          "\n	o	Quando vou fazer?	\n"+
          "\n	o	Onde vou deixar?	\n"+
          "\n			\n"+
          "\n	•	Use arquivos fichário para te ajudar a acompanhar os detalhes	\n"+
          "\n	•	Desenvolva rotinas e respostas padrão; alinhe tudo o que conseguir. Simplifique os relatórios.	\n"+
          "\n	•	Use computadores, e-mails, mensagens de voz...tudo o que possa lhe ajudar a agilizar suas tarefas com a sua documentação.	\n"+
          "\n	•	Agende momentos em seu dia para lidar com a papelada.	\n"+
          "\n	•	Se possível, conduza cada folha de papel apenas uma vez. Não deixe- a de lado sem fazer nada com ela.	\n"+
          "\n	•	Agende tempo para ler em uma base regular. Seja seletivo sobre o que você vai ler.	\n"+
          "\n	•	Aprenda como ler mais rápido e melhor.	\n"+
          "\n			\n"+
          "\n	•	Limpe seus arquivos ao menos uma vez por ano. Faça a festa! 	\n"+
          "\n	MEU PLANO DE AÇÃO PARA DOMINAR A DOCUMENTAÇÃO		\n"+
          "\n	1	Os velhos hábitos que quero mudar ou eliminar.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	2	Os novos hábitos que quero desenvolver.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	3	Passos que devo seguir para ter certeza de que estou determinado.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	4	Consistência e persistência são a única forma de desenvolver novos hábitos.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	5. A quem devo pedir ajuda e o que devo pedir para que façam? 		\n"+
          "";
  //
  String _textoDelegacao =
      "\n	DELEGAÇÃO		\n"+
          "\n	Categoria J		\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	Dominar a delegação de tarefas hoje é diferente do que costumava ser. Historicamente, delegação é um processo vertical, descendo por toda a linha de comando, desde o membro superior até um subordinado. Delegação vertical seguia a andamento natural de uma autoridade formal em uma empresa. Hoje, com ênfase em trabalho em equipe auto-direcionado, a delegação horizontal é tão importante quanto a vertical. Delegação horizontal envolver delegar tarefas e funções à parceiros e outros sobre os quais você possui uma autoridade formal. Algumas pessoas, porém, acreditam que elas não podem delegar efetivamente. Isso não é verdade.		\n"+
          "\n	 A suposição do passado é que autoridade formal lhe dava o direito de dizer às pessoas: faça isso, faça aquilo. Mas isso era apenas em partes uma verdade. A coerência realmente provocou desempenho, mas nem sempre excelente desempenho de alta qualidade.		\n"+
          "\n			\n"+
          "\n	Aceitação de autoridade		\n"+
          "\n	Uma explicação alternativa pode ser mais útil. Considere que você nunca tem mais autoridade sobre outra pessoa do que essa pessoa está disposta a conceder-lhe. Sua autoridade, em outras palavras, depende da aceitação da outra pessoa. Isso significa que a única condição para delegação é alguém disposto a aceitar o que deseja delegar. A autoridade de aceitação não depende de relações de autoridade formal, mas de sua capacidade de persuadir alguém a fazer algo.		\n"+
          "\n	O que é delegação?		\n"+
          "\n			\n"+
          "\n	Atualmente, a delegação significa compartilhamento de trabalho, seja vertical ou horizontal. Combina autoridade de posição formal e autoridade de aceitação. Isso significa compartilhar responsabilidade e autoridade com os outros e responsabilizá-los pelo desempenho.		\n"+
          "\n			\n"+
          "\n	A responsabilidade refere-se à tarefa de trabalho - os resultados pretendidos. Inclui também a obrigação de realizar todas as atividades necessárias para alcançar os resultados pretendidos. Autoridade refere-se ao direito de agir e tomar decisões. A delegação bem-sucedida exige autoridade igual à responsabilidade. 		\n"+
          "\n	Responsabilidade significa ser chamado a responder por ações e decisões. Também implica recompensas e penalidades.		\n"+
          "\n	Delegação efetiva		\n"+
          "\n	Para a maioria, a delegação envolve um dilema. Devemos manter o que queremos desistir - a responsabilidade; E devemos desistir do que queremos manter - a autoridade. Quão bem lidar com esse dilema determina o nosso sucesso na delegação. A delegação é uma ferramenta poderosa para capacitar as pessoas. No entanto, requer um alto nível de confiança entre o delegador e delegado. A confiança leva tempo para se desenvolver. A delegação funciona melhor quando o clima organizacional enfatiza o desenvolvimento, o crescimento, a inovação, a criatividade e a dignidade humana dos funcionários. Reflita sobre o que você acabou de ler e reveja as afirmações a seguir. Anote quaisquer ações necessárias para melhorar seus hábitos de delegação.		\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	Passos para uma delegação efetiva: 		\n"+
          "\n			\n"+
          "\n	(1) pense e planeje primeiro.		\n"+
          "\n	(2) esclarecer a responsabilidade e os resultados pretendidos.		\n"+
          "\n	(3) selecione a pessoa certa.		\n"+
          "\n	(4) decida o nível de autoridade.		\n"+
          "\n	(5) decida os controles e os pontos de controle.		\n"+
          "\n	(6) crie um ambiente motivador.		\n"+
          "\n	(7) mantenha-os responsáveis.		\n"+
          "\n	Conceitos chave sobre Delegação.		\n"+
          "\n			\n"+
          "\n	•	Níveis gerais de autoridade 	\n"+
          "\n	o	Nível 1: obtenha os fatos, vou decidir.	\n"+
          "\n	o	Nível 2: Sugira alternativas, vou decidir.	\n"+
          "\n	o	Nível 3: Recomende uma alternativa, vou decidir.	\n"+
          "\n	o	Nível 4: Decida, aguarde a minha aprovação.	\n"+
          "\n	o	Nível 5: Decida, agir a menos que eu diga não.	\n"+
          "\n	o	Nível 6: Tome a frente, relate os resultados.	\n"+
          "\n	o	Nível 7: Tome a frente, informe se não tiver êxito.	\n"+
          "\n	o	Nível 8: Tome a frente, relatórios não necessários. 	\n"+
          "\n			\n"+
          "\n	•	Certifique-se de delegar autoridade suficiente para permitir que a outra pessoa realize os resultados pretendidos. Lembre-se dos oito níveis de autoridade. 	\n"+
          "\n			\n"+
          "\n	•	Considere como você irá controlar o trabalho antes de delegá-lo. Se você não pode controlá-lo, talvez você não deva delegá-lo. 	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	•	Considere o estilo de personalidade da outra pessoa. Adapte à sua delegação de acordo com isso. 	\n"+
          "\n			\n"+
          "\n	•	Não interfira, sub-corte, se sobreponha ou arbitrariamente reverter as decisões dos outros. 	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	•	Delegue o direito de estar errado. Use erros como um processo de aprendizagem.	\n"+
          "\n			\n"+
          "\n	•	Escreva os detalhes pertinentes da delegação. Dê a outra pessoa uma cópia. 	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	•	O acompanhamento não significa respirar o pescoço de uma pessoa. Deixe a pessoa sozinha para fazer o trabalho, mas mantenha controles regulares em pontos críticos ao longo do caminho. 	\n"+
          "\n			\n"+
          "\n	•	Não permita a delegação ascendente. Peça soluções, juntamente com problemas. Ajude os outros a aprender a tomar suas próprias decisões. 	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	•	Insistir nos resultados, mas não na perfeição. Geralmente, existem muitas maneiras de obter o mesmo resultado. Não insista que outras pessoas façam o seu caminho. Aprenda a viver com as diferenças.	\n"+
          "\n			\n"+
          "\n	MEU PLANO DE AÇÃO PARA MELHORAR A DELEGAÇÃO		\n"+
          "\n	1	Os velhos hábitos que quero mudar ou eliminar.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	2	Os novos hábitos que quero desenvolver.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	3	Passos que devo seguir para ter certeza de que estou determinado.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	4	Consistência e persistência são a única forma de desenvolver novos hábitos.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	5. A quem devo pedir ajuda e o que devo pedir para que façam? 		\n"+
          "";
  //
  String _textoProcrastinacao =
      "\n	PROCRASTINAÇÃO		\n"+
          "\n	Categoria K		\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	A procrastinação impede todos nós. Mais planos se desviam, mais sonhos são insatisfeitos e mais tempo é desperdiçado por procrastinação do que por qualquer outro fator único. Para muitas pessoas, a procrastinação torna-se um hábito insidioso que pode arruinar suas carreiras, destruir sua felicidade e até encurtar suas vidas. 		\n"+
          "\n	A procrastinação evita o sucesso. 		\n"+
          "\n	Como? O sucesso vem de fazer as coisas realmente importantes para a obtenção de resultados. Essenciais são mais sujeitos a procrastinação, pois raramente parecemos procrastinar sobre coisas sem importância. Se pudéssemos apenas aprender a mudar nossa procrastinação de questões importantes para assuntos sem importância, nosso problema diminuirá!		\n"+
          "\n	O que causa a procrastinação?		\n"+
          "\n	A procrastinação não respeita ninguém. Todos nós sofremos de uma vez ou outra. A procrastinação está fazendo ações ou tarefas de baixa prioridade, em vez de prioridades mais altas. Procrastinação está endireitando sua mesa quando você deveria estar trabalhando nesse relatório; Assistindo televisão quando você deveria estar se exercitando; Ter outra xícara de café quando você voltar para o escritório; Chamando o cliente amigável que compra muito pouco quando você deveria estar preparando uma apresentação de vendas para essa perspectiva difícil que poderia comprar muito mais; Evitando um colega de trabalho ao invés de dizer-lhe más notícias; Ficar longe do escritório para evitar disciplinar um subordinado; E adiar as atividades com seus filhos, porque algo sempre parece 'mais urgente', ... até que de repente eles estão meio crescidos e você percebe que é tarde demais para fazer qualquer coisa que você sempre falou sobre fazer juntos.		\n"+
          "\n	A procrastinação pode ser atribuída a três causas principais. 		\n"+
          "\n	Nós tendemos a adiar 		\n"+
          "\n	(1) coisas desagradáveis, 		\n"+
          "\n	(2) coisas difíceis, e 		\n"+
          "\n	(3) coisas que envolvem decisões difíceis.		\n"+
          "\n	No entanto, estas são as coisas que mais contribuem para o nosso sucesso. Quando não queremos fazer algo, nos colocamos com pequenas coisas. Tentamos manter-nos ocupados para que possamos ter uma desculpa que facilite nossas consciências. Você já notou como ignorar uma tarefa nunca a faz desaparecer? Adiar isso só piora. A ansiedade irrita você, e é mais provável que você fique irritado. Nenhum de nós escapa à nossa cota de tarefas difíceis ou desagradáveis. Elas não desaparecem por serem ignoradas. Eventualmente, temos que enrolar nossos punhos e enfrentá-las. Enquanto isso, sofremos.		\n"+
          "\n			\n"+
          "\n	Ação preventiva. 		\n"+
          "\n	Mudar o seu impulso de 'fazer depois' - o hábito de domínio da procrastinação requer ação positiva. Não defenda seus hábitos de procrastinação; Altere-os. Se você simplesmente defender, negar ou racionalizar, não há esperança de melhoria. A coisa mais valiosa que você pode fazer quando procrastinar é admitir isso. Enquanto continuar a negar ou racionalizar sua procrastinação, você não está em posição de superá-la. Uma vez que você admite que você está realmente procrastinando, examine sua situação e determine por que. Em seguida, encontre uma técnica para conquistar sua procrastinação. No final, a procrastinação, como qualquer problema, só pode ser resolvida por ação positiva.		\n"+
          "\n			\n"+
          "\n	Reflita sobre o que você acabou de ler e reveja as afirmações a seguir. Anote quaisquer ações necessárias para melhorar seus hábitos antes a procrastinação.		\n"+
          "\n	Conceitos chave sobre Procrastinação		\n"+
          "\n	•	Ao procrastinar, a melhor coisa que você pode fazer é admitir isso. Pare de racionalizar e é mais provável que você aja.	\n"+
          "\n	•	Analise o que faz com que você ignore as coisas. A maioria de nós tende a evitar coisas desagradáveis, complexas ou esmagadoras.	\n"+
          "\n	•	Faça os trabalhos mais difíceis primeiro.	\n"+
          "\n	•	Lidar com tarefas desagradáveis em peças pequenas e segmentos de curto período de tempo. 	\n"+
          "\n	•	Delegue a tarefa a outra pessoa que possa gostar de fazê-lo. Outros, muitas vezes, gostam do que não gostamos de fazer. 	\n"+
          "\n	•	Quebre tarefas complexas em pequenos passos. Concentre-se em um passo de cada vez. 	\n"+
          "\n	•	Faça uma pequena tarefa que o faça avançar na direção certa. 	\n"+
          "\n	•	Dê a você uma motivação. Não ignore as coisas porque você sente pena de si mesmo. 	\n"+
          "\n	•	Não seja um perfeccionista. Algum risco é inevitável. Lembre-se, você é pago para obter resultados, não para ser perfeito. 	\n"+
          "\n	•	Não espere o bom humor. Comece apesar do seu humor. Thomas Edison disse: 'A criatividade é 99% de transpiração e apenas 1 por cento de inspiração'. 	\n"+
          "\n	•	Há apenas duas regras para alcançar qualquer coisa. Regra 1: Comece. Regra 2: continue. 	\n"+
          "\n	•	Comprometa-se com a ação. Defina prazos. Prometa resultados a outros. O medo de fracassar é um poderoso motivador. 	\n"+
          "\n	•	Prometa-se uma recompensa pela conclusão da tarefa. Se você ganhar a recompensa, certifique-se de levá-la. 	\n"+
          "\n	•	Sim você pode! Faça isso agora!	\n"+
          "\n	MEU PLANO DE AÇÃO PARA DOMINAR A PROCRASTINAÇÃO		\n"+
          "\n	1	Os velhos hábitos que quero mudar ou eliminar.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	2	Os novos hábitos que quero desenvolver.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	3	Passos que devo seguir para ter certeza de que estou determinado.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	4	Consistência e persistência são a única forma de desenvolver novos hábitos.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	5. A quem devo pedir ajuda e o que devo pedir para que façam?		\n"+
          "";
  //
  String _textoTrabalhoEquipe =
      "\n	TEMPO PARA TRABALHO EM EQUIPE		\n"+
          "\n	CATEGORIA L		\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	Sempre foi bom fazer a pergunta: 'Qual é o melhor uso do meu tempo?' Mas a questão maior é: 'Qual o melhor uso do nosso tempo?' Ninguém trabalha no vácuo. Ninguém faz muito sozinho. O desempenho superior exige o esforço conjunto de muitas pessoas, trabalhando em conjunto em direção a um objetivo comum.		\n"+
          "\n	A maior preocupação não é apenas para gerenciamento de tempo pessoal, mas para gerenciamento de tempo em equipe. Quando um indivíduo trabalha em conjunto com outros, a eficácia cresce, criando maior produtividade para todos os envolvidos. Juntos, podemos fazer mais do que os esforços coletivos de cada indivíduo trabalhando sozinho.		\n"+
          "\n	O gerenciamento de tempo em equipe requer uma abordagem totalmente nova para gerenciamento de tempo. Isso sugere que o tempo da organização está focado em grupos de pessoas que trabalham em conjunto, e não com indivíduos. Isso requer que aprendamos a pensar e agir com respeito ao nosso tempo, pois ele se encaixa no todo maior. Isso não é para diminuir o indivíduo, mas para ampliar a percepção do indivíduo.		\n"+
          "\n	Equipes de apoio.		\n"+
          "\n	Os melhores mestres do tempo estão constantemente se esforçando para desenvolver uma boa equipe de suporte. Eles percebem o valor dos parceiros. E eles percebem que os parceiros não são apenas subordinados; Eles também são colegas de trabalho e superiores. Onde quer que você trabalhe, o sucesso da sua organização depende de relações de trabalho positivas.		\n"+
          "\n	Os gerenciadores de tempo eficazes descobrem muitas maneiras de desenvolver um diálogo contínuo sobre o tempo. Eles encontram maneiras de falar sobre o desperdício de tempo sem culpar os outros.		\n"+
          "\n	Por mais que tentemos, mesmo com as melhores intenções, ainda desperdiçamos o tempo de outras pessoas e criamos problemas para eles. É inevitável. Infelizmente, há muito pouco diálogo sobre esses problemas. Passamos muito tempo reclamando, mas pouco tempo honestamente tentando resolver esses problemas.		\n"+
          "\n			\n"+
          "\n	Pense nos Outros.		\n"+
          "\n	Uma das chaves para o desenvolvimento de trabalho em equipe é o desejo sincero de respeitar e ajudar os outros. Pouco se ganha sempre pensando em termos de interesse próprio. Estamos juntos nessa. Você não pode resolver seus problemas de tempo à custa de outros, ou excluindo qualquer consideração de outros. Na melhor das hipóteses, é um ganho temporário com efeitos colaterais desastrosos.		\n"+
          "\n	Precisamos melhorar a nós mesmos, e nós também precisamos ajudar os outros a melhorar. Precisamos respeitar nosso próprio tempo e também respeitar o tempo dos outros. Precisamos desenvolver bons momentos de trabalho em equipe para cima, para baixo e para fora.		\n"+
          "\n	Influência Mútua		\n"+
          "\n	Dominar o tempo não é apenas um problema individual. É uma questão de influência mútua. Nós nos ajudamos uns aos outros, ou nos impedimos. Todos somos parte do problema, e também fazemos parte da solução. Tome tempo para ser uma influência positiva para os outros. Acima de tudo, trate os outros como você gostaria de ser tratado. Os resultados são fantásticos.		\n"+
          "\n	Reflita sobre o que você acabou de ler sobre gerenciamento de tempo da equipe. Revise as afirmações a seguir. Anote as ideias de ação para melhorar seu tempo em equipe.		\n"+
          "\n	Conceitos chave sobre Tempo de trabalho em Equipe		\n"+
          "\n	•	Não importa o quão bom você é, você não pode fazer tudo. Cabe a você desenvolver uma equipe de suporte forte para ajudar todos a alcançar mais. Nenhum de nós pode fazer tanto quanto todos nós.	\n"+
          "\n	•	Não espere que alguém dê o primeiro passo; Suponha que tudo depende de você. 'Se for para ser, depende de mim'.	\n"+
          "\n	•	Defina um bom exemplo de domínio de tempo para outros seguirem.	\n"+
          "\n	•	Mostre às pessoas que você os respeite e seu tempo.	\n"+
          "\n	•	Procure maneiras de economizar tempo para eles.	\n"+
          "\n	•	Pergunte a outros como você desperdiça seu tempo. Mude seus caminhos.	\n"+
          "\n	•	Aqueça as relações de trabalho. Conheça bem as pessoas. Fale com eles. Ria com eles. Compartilhe suas preocupações.	\n"+
          "\n	•	Desenvolver o hábito do “em tempo”. Entregue o que promete no tempo combinado.	\n"+
          "\n	•	Discuta metas, prioridades e planos com superiores, subordinados, membros da equipe e equipe de suporte. Faça isso com frequência.	\n"+
          "\n	•	Faça uma agenda antes de ligar ou se encontrar com qualquer um.	\n"+
          "\n	•	Não tenha muita pressa ao instruir os outros. Tire um tempo para fazê-lo direito.	\n"+
          "\n	•	Tire um tempo para ser um bom ouvinte.	\n"+
          "\n	•	Comece mais cedo. Peça coisas antes. Dê às pessoas um aviso prévio.	\n"+
          "\n	•	Peça a todos ideias sobre como melhorar tudo. Quanto mais ideias você obtiver, mais você pode melhorar.	\n"+
          "\n			\n"+
          "\n	MEU PLANO DE AÇÃO PARA MELHORAR TEMPO DE TRABALHO EM EQUIPE		\n"+
          "\n	1	Os velhos hábitos que quero mudar ou eliminar.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	2	Os novos hábitos que quero desenvolver.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	3	Passos que devo seguir para ter certeza de que estou determinado.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	4	Consistência e persistência são a única forma de desenvolver novos hábitos.	\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n			\n"+
          "\n	5. A quem devo pedir ajuda e o que devo pedir para que façam?		\n"+
          "\n\n\n\n\n\n\n\n\n	Conclusão		\n"+
          "\n	Até agora, você desenvolveu seus hábitos de domínio de tempo, desenvolveu planos de ação para melhoria e descobriu como sua equipe ou grupo de trabalho pode usar o tempo de forma mais eficaz. Parabéns!		\n"+
          "\n	A chave para dominar novos hábitos é seguir as cinco etapas usadas para construir seus planos de ação:		\n"+
          "\n	1	Os velhos hábitos que quero mudar ou eliminar	\n"+
          "\n	2	Os novos hábitos que quero desenvolver	\n"+
          "\n	3	Passos que devo seguir para ter certeza de que estou determinado.	\n"+
          "\n	4	Consistência e persistência são a única forma de desenvolver novos hábitos.	\n"+
          "\n	5	A quem devo pedir ajuda e o que devo pedir para que façam?	\n"+
          "\n	.		\n"+
          "\n	No início, essas etapas podem parecer mecânicas e rígidas. Depois de usá-los para dominar dois ou três novos hábitos, você achará que o processo se torna mais natural e ocorre mais rapidamente. Tendo abordado doze maneiras de conseguir mais, agora você está pronto para continuar dominando seu tempo. Use as notas a seguir para o seu resumo pessoal e grave quais hábitos serão os primeiros na sua lista. Onde na lista você começará?		\n"+
          "\n			\n"+
          "\n	-1	Desenvolver minha atitude 'Eu consigo'	\n"+
          "\n	-2	Estabelecendo metas claras	\n"+
          "\n	-3	Sabendo o que fazer, priorizando	\n"+
          "\n	-4	Analisando o uso do meu tempo	\n"+
          "\n	-5	Dominando o planejamento para a eficácia	\n"+
          "\n	-6	Saber quando fazer as coisas através de agendamento	\n"+
          "\n	-7	Controlando interrupções	\n"+
          "\n	-8	Melhorar a eficácia da reunião	\n"+
          "\n	-9	Dominar a documentação	\n"+
          "\n	-10	Aumentar as estratégias de delegação	\n"+
          "\n	-11	Conquistando procrastinação	\n"+
          "\n	-12	Desenvolvendo tempo de trabalho em equipe	\n"+
          "";
  //

  // Ansiedade

  double _valorAnsiedade (double d) => d;
  //
  @override
  void initState() {
    setState(() {
      _valorAnsiedade(widget.v1.toDouble());
    });
    super.initState();
    _seriesData = List<charts.Series<Resultados, String>>();
    _seriesPieData = List<charts.Series<Task, String>>();
    _seriesLineData = List<charts.Series<Sales, int>>();

    _generateData();
  }

  @override
  Widget build(BuildContext context) {
    return MaterialApp(
      home: DefaultTabController(
        length: 3,
        child: Scaffold(
          appBar: AppBar(
            centerTitle: true,
            title: Text("Wop3 - Desenvolvimento Humano"),
            flexibleSpace: Container(
              decoration: BoxDecoration(
                  gradient: LinearGradient(
                      begin: Alignment.topLeft,
                      end: Alignment.bottomRight,
                      colors: <Color>[
                        Color(0xFFF58524),
                        Color(0XFFF92B7F),
                      ])
              ),
            ),
            bottom: TabBar(
              indicatorColor: Color(0xff9962D0),
              tabs: [
                Tab(icon: Icon(FontAwesomeIcons.solidChartBar),),
                Tab(icon: Icon(FontAwesomeIcons.chartPie)),
                Tab(icon: Icon(FontAwesomeIcons.chartLine)),
              ],
            ),
          ),
          body: TabBarView(
            children: [
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Gerenciamento de Tempo',
                          style: TextStyle(fontSize: 10.0,
                              fontWeight: FontWeight.bold),),
                        Expanded(
                          child: charts.BarChart(
                            _seriesData,
                            animate: true,
                            vertical: false,
                            barGroupingType: charts.BarGroupingType.stacked,
                            /*  behaviors: [new charts.SeriesLegend(
                                position: charts.BehaviorPosition.top,
                              outsideJustification: charts.OutsideJustification.endDrawArea,
                              horizontalFirst: false,
                              desiredMaxRows: 2,
                              cellPadding: new EdgeInsets.only(right: 4.0, bottom: 4.0),
                            entryTextStyle: charts.TextStyleSpec(
                                color: charts.MaterialPalette.purple.shadeDefault,
                                fontFamily: 'Georgia',
                                fontSize: 8)
                          )],*/
                            animationDuration: Duration(seconds: 3),
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
                                        builder: (context) => Home(widget._codAluno)
                                    ));
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        )
                      ],
                    ),
                  ),
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                    child: ListView(
                      children: <Widget>[
                        SizedBox(
                          width: 40,
                          height: 40,
                          //     child: Image.asset("images/logo.png"),
                        ),
                        SizedBox(
                          height: 20,
                        ),
                        SizedBox(
                          width: 200,
                          child:SingleChildScrollView(
                              scrollDirection: Axis.vertical,
                              child: Column(
                                  children: <Widget>[
                                    Text('Resultado do Teste\n',
                                      style: TextStyle(
                                        fontSize: 30.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    ),
                                    //parte-1
                                    Text('ATITUDES\n',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    ),

                                    SizedBox(
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 30
                                              ,
                                              child: Text("Pontuação :" + widget.v1.toString() ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),),                                            Container(
                                                width: 110,
                                                height: 30
                                            )
                                          ]
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        width: 380,
                                        height: 140,
                                        child: Column(

                                          children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 110,
                                                    height: 30
                                                    ,
                                                    child: Text("0",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),),
                                                  Container(
                                                      width: 110,
                                                      height: 30
                                                  ),
                                                  Container(
                                                      width: 110,
                                                      height: 30,
                                                      child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: <Widget>[
                                                            Text("20",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,))
                                                          ]
                                                      ))
                                                ]
                                            ),
                                            Row(
                                                children: <Widget>[
                                                  Container(
                                                      width: 380,
                                                      child:
                                                      Slider(
                                                          value: widget.v1.toDouble() ,
                                                          min: 0,
                                                          max: 20,
                                                          label: (widget.v1.toString()),
                                                          divisions: 20,
                                                          activeColor: Colors.black,
                                                          inactiveColor: Colors.black
                                                      ))]

                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[

                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.red,
                                                        Colors.orange
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.orange,
                                                        Colors.lime
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.lime,
                                                        Colors.green
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),

                                              ],

                                            )


                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    //texto-1
                                    Text(_textoAtitudes+ "\n\n",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.justify,
                                    ),
                                    //parte2
                                    Text('OBJETIVOS\n\n',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 30
                                              ,
                                              child: Text("Pontuação :" + widget.v2.toString() ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),),                                            Container(
                                                width: 110,
                                                height: 30
                                            )
                                          ]
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        width: 380,
                                        height: 140,
                                        child: Column(

                                          children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 110,
                                                    height: 30
                                                    ,
                                                    child: Text("0",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),),
                                                  Container(
                                                      width: 110,
                                                      height: 30
                                                  ),
                                                  Container(
                                                      width: 110,
                                                      height: 30,
                                                      child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: <Widget>[
                                                            Text("20",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,))
                                                          ]
                                                      ))
                                                ]
                                            ),
                                            Row(
                                                children: <Widget>[
                                                  Container(
                                                      width: 380,
                                                      child:
                                                      Slider(
                                                          value: widget.v3.toDouble() ,
                                                          min: 0,
                                                          max: 20,
                                                          label: (widget.v3.toString()),
                                                          divisions: 40,
                                                          activeColor: Colors.black,
                                                          inactiveColor: Colors.black
                                                      ))]

                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[

                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.red,
                                                        Colors.orange
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.orange,
                                                        Colors.lime
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.lime,
                                                        Colors.green
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),

                                              ],

                                            )


                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(_textoObjetivos+ "\n\n",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.justify,
                                    ),
                                    //parte3
                                    Text('PRIORIDADES\n\n',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 30
                                              ,
                                              child: Text("Pontuação :" + widget.v3.toString() ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),),                                            Container(
                                                width: 110,
                                                height: 30
                                            )
                                          ]
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        width: 380,
                                        height: 140,
                                        child: Column(

                                          children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 110,
                                                    height: 30
                                                    ,
                                                    child: Text("0",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),),
                                                  Container(
                                                      width: 110,
                                                      height: 30
                                                  ),
                                                  Container(
                                                      width: 110,
                                                      height: 30,
                                                      child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: <Widget>[
                                                            Text("20",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,))
                                                          ]
                                                      ))
                                                ]
                                            ),
                                            Row(
                                                children: <Widget>[
                                                  Container(
                                                      width: 380,
                                                      child:
                                                      Slider(
                                                          value: widget.v4.toDouble() ,
                                                          min: 0,
                                                          max: 20,
                                                          label: (widget.v4.toString()),
                                                          divisions: 40,
                                                          activeColor: Colors.black,
                                                          inactiveColor: Colors.black
                                                      ))]

                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[

                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.red,
                                                        Colors.orange
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.orange,
                                                        Colors.lime
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.lime,
                                                        Colors.green
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),

                                              ],

                                            )


                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(_textoPrioridades+ "\n\n",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.justify,
                                    ),

                                    //parte4
                                    Text('ANÁLIZE\n\n',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 30
                                              ,
                                              child: Text("Pontuação :" + widget.v4.toString() ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),),                                            Container(
                                                width: 110,
                                                height: 30
                                            )
                                          ]
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        width: 380,
                                        height: 140,
                                        child: Column(

                                          children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 110,
                                                    height: 30
                                                    ,
                                                    child: Text("0",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),),
                                                  Container(
                                                      width: 110,
                                                      height: 30
                                                  ),
                                                  Container(
                                                      width: 110,
                                                      height: 30,
                                                      child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: <Widget>[
                                                            Text("20",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,))
                                                          ]
                                                      ))
                                                ]
                                            ),
                                            Row(
                                                children: <Widget>[
                                                  Container(
                                                      width: 380,
                                                      child:
                                                      Slider(
                                                          value: widget.v4.toDouble() ,
                                                          min: 0,
                                                          max: 20,
                                                          label: (widget.v4.toString()),
                                                          divisions: 40,
                                                          activeColor: Colors.black,
                                                          inactiveColor: Colors.black
                                                      ))]

                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[

                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.red,
                                                        Colors.orange
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.orange,
                                                        Colors.lime
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.lime,
                                                        Colors.green
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),

                                              ],

                                            )


                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(_textoAnalise+ "\n\n",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.justify,
                                    ),

                                    //parte5
                                    Text('PLANEJAMENTO \n\n',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 30
                                              ,
                                              child: Text("Pontuação :" + widget.v5.toString() ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),),                                            Container(
                                                width: 110,
                                                height: 30
                                            )
                                          ]
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        width: 380,
                                        height: 140,
                                        child: Column(

                                          children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 110,
                                                    height: 30
                                                    ,
                                                    child: Text("0",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),),
                                                  Container(
                                                      width: 110,
                                                      height: 30
                                                  ),
                                                  Container(
                                                      width: 110,
                                                      height: 30,
                                                      child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: <Widget>[
                                                            Text("20",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,))
                                                          ]
                                                      ))
                                                ]
                                            ),
                                            Row(
                                                children: <Widget>[
                                                  Container(
                                                      width: 380,
                                                      child:
                                                      Slider(
                                                          value: widget.v5.toDouble() ,
                                                          min: 0,
                                                          max: 20,
                                                          label: (widget.v5.toString()),
                                                          divisions: 40,
                                                          activeColor: Colors.black,
                                                          inactiveColor: Colors.black
                                                      ))]

                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[

                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.red,
                                                        Colors.orange
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.orange,
                                                        Colors.lime
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.lime,
                                                        Colors.green
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),

                                              ],

                                            )


                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(_textoPlanejamento+ "\n\n",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.justify,
                                    ),

                                    //parte6
                                    Text('AGENDAMENTO\n\n',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 30
                                              ,
                                              child: Text("Pontuação :" + widget.v6.toString() ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),),                                            Container(
                                                width: 110,
                                                height: 30
                                            )
                                          ]
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        width: 380,
                                        height: 140,
                                        child: Column(

                                          children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 110,
                                                    height: 30
                                                    ,
                                                    child: Text("0",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),),
                                                  Container(
                                                      width: 110,
                                                      height: 30
                                                  ),
                                                  Container(
                                                      width: 110,
                                                      height: 30,
                                                      child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: <Widget>[
                                                            Text("20",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,))
                                                          ]
                                                      ))
                                                ]
                                            ),
                                            Row(
                                                children: <Widget>[
                                                  Container(
                                                      width: 380,
                                                      child:
                                                      Slider(
                                                          value: widget.v6.toDouble() ,
                                                          min: 0,
                                                          max: 20,
                                                          label: (widget.v6.toString()),
                                                          divisions: 40,
                                                          activeColor: Colors.black,
                                                          inactiveColor: Colors.black
                                                      ))]

                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[

                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.red,
                                                        Colors.orange
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.orange,
                                                        Colors.lime
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.lime,
                                                        Colors.green
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),

                                              ],

                                            )


                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(_textoAgendamento+ "\n\n",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.justify,
                                    ),

                                    //parte7
                                    Text('INTERRUPÇÕES\n\n',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 30
                                              ,
                                              child: Text("Pontuação :" + widget.v7.toString() ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),),                                            Container(
                                                width: 110,
                                                height: 30
                                            )
                                          ]
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        width: 380,
                                        height: 140,
                                        child: Column(

                                          children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 110,
                                                    height: 30
                                                    ,
                                                    child: Text("0",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),),
                                                  Container(
                                                      width: 110,
                                                      height: 30
                                                  ),
                                                  Container(
                                                      width: 110,
                                                      height: 30,
                                                      child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: <Widget>[
                                                            Text("20",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,))
                                                          ]
                                                      ))
                                                ]
                                            ),
                                            Row(
                                                children: <Widget>[
                                                  Container(
                                                      width: 380,
                                                      child:
                                                      Slider(
                                                          value: widget.v7.toDouble() ,
                                                          min: 0,
                                                          max: 20,
                                                          label: (widget.v7.toString()),
                                                          divisions: 40,
                                                          activeColor: Colors.black,
                                                          inactiveColor: Colors.black
                                                      ))]

                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[

                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.red,
                                                        Colors.orange
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.orange,
                                                        Colors.lime
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.lime,
                                                        Colors.green
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),

                                              ],

                                            )


                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(_textoInterrupcoes+ "\n\n",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.justify,
                                    ),

                                    //parte8
                                    Text('REUNIÕES\n\n',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 30
                                              ,
                                              child: Text("Pontuação :" + widget.v8.toString() ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),),                                            Container(
                                                width: 110,
                                                height: 30
                                            )
                                          ]
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        width: 380,
                                        height: 140,
                                        child: Column(

                                          children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 110,
                                                    height: 30
                                                    ,
                                                    child: Text("0",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),),
                                                  Container(
                                                      width: 110,
                                                      height: 30
                                                  ),
                                                  Container(
                                                      width: 110,
                                                      height: 30,
                                                      child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: <Widget>[
                                                            Text("20",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,))
                                                          ]
                                                      ))
                                                ]
                                            ),
                                            Row(
                                                children: <Widget>[
                                                  Container(
                                                      width: 380,
                                                      child:
                                                      Slider(
                                                          value: widget.v8.toDouble() ,
                                                          min: 0,
                                                          max: 20,
                                                          label: (widget.v8.toString()),
                                                          divisions: 40,
                                                          activeColor: Colors.black,
                                                          inactiveColor: Colors.black
                                                      ))]

                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[

                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.red,
                                                        Colors.orange
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.orange,
                                                        Colors.lime
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.lime,
                                                        Colors.green
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),

                                              ],

                                            )


                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(_textoReunioes+ "\n\n",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.justify,
                                    ),

                                    //parte9
                                    Text('DOCUMENTAÇÃO\n\n',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 30
                                              ,
                                              child: Text("Pontuação :" + widget.v9.toString() ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),),                                            Container(
                                                width: 110,
                                                height: 30
                                            )
                                          ]
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        width: 380,
                                        height: 140,
                                        child: Column(

                                          children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 110,
                                                    height: 30
                                                    ,
                                                    child: Text("0",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),),
                                                  Container(
                                                      width: 110,
                                                      height: 30
                                                  ),
                                                  Container(
                                                      width: 110,
                                                      height: 30,
                                                      child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: <Widget>[
                                                            Text("20",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,))
                                                          ]
                                                      ))
                                                ]
                                            ),
                                            Row(
                                                children: <Widget>[
                                                  Container(
                                                      width: 380,
                                                      child:
                                                      Slider(
                                                          value: widget.v9.toDouble() ,
                                                          min: 0,
                                                          max: 20,
                                                          label: (widget.v9.toString()),
                                                          divisions: 40,
                                                          activeColor: Colors.black,
                                                          inactiveColor: Colors.black
                                                      ))]

                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[

                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.red,
                                                        Colors.orange
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.orange,
                                                        Colors.lime
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.lime,
                                                        Colors.green
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),

                                              ],

                                            )


                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(_textoDocumentacao+ "\n\n",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.justify,
                                    ),

                                    //parte10
                                    Text('DELEGAÇÃO\n\n',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 30
                                              ,
                                              child: Text("Pontuação :" + widget.v10.toString() ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),),                                            Container(
                                                width: 110,
                                                height: 30
                                            )
                                          ]
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        width: 380,
                                        height: 140,
                                        child: Column(

                                          children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 110,
                                                    height: 30
                                                    ,
                                                    child: Text("0",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),),
                                                  Container(
                                                      width: 110,
                                                      height: 30
                                                  ),
                                                  Container(
                                                      width: 110,
                                                      height: 30,
                                                      child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: <Widget>[
                                                            Text("20",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,))
                                                          ]
                                                      ))
                                                ]
                                            ),
                                            Row(
                                                children: <Widget>[
                                                  Container(
                                                      width: 380,
                                                      child:
                                                      Slider(
                                                          value: widget.v10.toDouble() ,
                                                          min: 0,
                                                          max: 20,
                                                          label: (widget.v10.toString()),
                                                          divisions: 40,
                                                          activeColor: Colors.black,
                                                          inactiveColor: Colors.black
                                                      ))]

                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[

                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.red,
                                                        Colors.orange
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.orange,
                                                        Colors.lime
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.lime,
                                                        Colors.green
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),

                                              ],

                                            )


                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(_textoDelegacao+ "\n\n",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.justify,
                                    ),

                                    //parte-11
                                    Text('PROCRASTINAÇÃO\n\n',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 30
                                              ,
                                              child: Text("Pontuação :" + widget.v11.toString() ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),),                                            Container(
                                                width: 110,
                                                height: 30
                                            )
                                          ]
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        width: 380,
                                        height: 140,
                                        child: Column(

                                          children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 110,
                                                    height: 30
                                                    ,
                                                    child: Text("0",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),),
                                                  Container(
                                                      width: 110,
                                                      height: 30
                                                  ),
                                                  Container(
                                                      width: 110,
                                                      height: 30,
                                                      child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: <Widget>[
                                                            Text("20",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,))
                                                          ]
                                                      ))
                                                ]
                                            ),
                                            Row(
                                                children: <Widget>[
                                                  Container(
                                                      width: 380,
                                                      child:
                                                      Slider(
                                                          value: widget.v11.toDouble() ,
                                                          min: 0,
                                                          max: 20,
                                                          label: (widget.v11.toString()),
                                                          divisions: 40,
                                                          activeColor: Colors.black,
                                                          inactiveColor: Colors.black
                                                      ))]

                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[

                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.red,
                                                        Colors.orange
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.orange,
                                                        Colors.lime
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.lime,
                                                        Colors.green
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),

                                              ],

                                            )


                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(_textoProcrastinacao+ "\n\n",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.justify,
                                    ),

                                    //parte12
                                    Text('TEMPO DO TRABALHO EM EQUIPE\n\n',
                                      style: TextStyle(
                                        fontSize: 25.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.center,
                                    ),
                                    SizedBox(
                                      child: Column(
                                          mainAxisAlignment: MainAxisAlignment.center,
                                          children: <Widget>[
                                            Container(
                                              width: 160,
                                              height: 30
                                              ,
                                              child: Text("Pontuação :" + widget.v12.toString() ,style: TextStyle(fontSize: 20, fontWeight: FontWeight.bold,)),),                                            Container(
                                                width: 110,
                                                height: 30
                                            )
                                          ]
                                      ),
                                    ),
                                    SizedBox(
                                      child: Container(
                                        width: 380,
                                        height: 140,
                                        child: Column(

                                          children: <Widget>[
                                            Row(
                                                mainAxisAlignment: MainAxisAlignment.center,
                                                children: <Widget>[
                                                  Container(
                                                    width: 110,
                                                    height: 30
                                                    ,
                                                    child: Text("0",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,)),),
                                                  Container(
                                                      width: 110,
                                                      height: 30
                                                  ),
                                                  Container(
                                                      width: 110,
                                                      height: 30,
                                                      child: Row(
                                                          mainAxisAlignment: MainAxisAlignment.end,
                                                          children: <Widget>[
                                                            Text("20",style: TextStyle(fontSize: 15, fontWeight: FontWeight.bold,))
                                                          ]
                                                      ))
                                                ]
                                            ),
                                            Row(
                                                children: <Widget>[
                                                  Container(
                                                      width: 380,
                                                      child:
                                                      Slider(
                                                          value: widget.v12.toDouble() ,
                                                          min: 0,
                                                          max: 20,
                                                          label: (widget.v12.toString()),
                                                          divisions: 40,
                                                          activeColor: Colors.black,
                                                          inactiveColor: Colors.black
                                                      ))]

                                            ),
                                            Row(
                                              mainAxisAlignment: MainAxisAlignment.center,
                                              children: <Widget>[

                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.red,
                                                        Colors.orange
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.orange,
                                                        Colors.lime
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),
                                                Container(
                                                  decoration: BoxDecoration(
                                                    gradient: LinearGradient(
                                                      begin: Alignment.topLeft,
                                                      end: Alignment.bottomRight,
                                                      stops: [0.3, 1],
                                                      colors: [
                                                        Colors.lime,
                                                        Colors.green
                                                      ],
                                                    ),
                                                  ),
                                                  width: 110,
                                                  height: 30
                                                  ,),

                                              ],

                                            )


                                          ],
                                        ),
                                      ),
                                    ),
                                    SizedBox(
                                      height: 15,
                                    ),
                                    Text(_textoTrabalhoEquipe+ "\n\n",
                                      style: TextStyle(
                                        fontSize: 18.0,
                                        fontWeight: FontWeight.bold,),textAlign: TextAlign.justify,
                                    )

                                    //
                                  ]
                              )
                            //
                            //
                            //
                            //
                          ),
                          //
                          //
                          //
                        ),
                        SizedBox(
                          height: 40,
                        ),
                        SizedBox(
                          height: 10,
                        ),
                        Container(
                          height: 60,
                          alignment: Alignment.center,
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
                                Navigator.pushNamed(
                                    context, "/Home");
                              },
                            ),
                          ),
                        ),
                        SizedBox(
                          height: 10,
                        ),
                      ],
                    )
                ),
              ),
              Padding(
                padding: EdgeInsets.all(8.0),
                child: Container(
                  child: Center(
                    child: Column(
                      children: <Widget>[
                        Text(
                          'Diagnóstico Emocional', style: TextStyle(
                            fontSize: 24.0, fontWeight: FontWeight.bold),),
                        Expanded(
                          child: charts.LineChart(
                              _seriesLineData,
                              defaultRenderer: new charts.LineRendererConfig(
                                  includeArea: true, stacked: true),
                              animate: true,
                              animationDuration: Duration(seconds: 5),
                              behaviors: [
                                new charts.ChartTitle('Nivel de Talento',
                                    behaviorPosition: charts.BehaviorPosition
                                        .bottom,
                                    titleOutsideJustification: charts
                                        .OutsideJustification.middleDrawArea),
                                new charts.ChartTitle('Reconhecimento',
                                    behaviorPosition: charts.BehaviorPosition
                                        .start,
                                    titleOutsideJustification: charts
                                        .OutsideJustification.middleDrawArea),
                                new charts.ChartTitle('Resultado',
                                  behaviorPosition: charts.BehaviorPosition.end,
                                  titleOutsideJustification: charts
                                      .OutsideJustification.middleDrawArea,
                                )
                              ]
                          ),
                        ),
                      ],
                    ),
                  ),
                ),
              ),
            ],
          ),
        ),
      ),
    );
  }
}

class Resultados {
  String place;
  int year;
  int quantity;
  Color cor;

  Resultados(this.year, this.place, this.quantity, this.cor);
}

class Task {
  String task;
  double taskvalue;
  Color colorval;

  Task(this.task, this.taskvalue, this.colorval);
}

class Sales {
  int yearval;
  int salesval;

  Sales(this.yearval, this.salesval);
}