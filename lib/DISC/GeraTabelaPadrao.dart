import 'package:flutter/cupertino.dart';
import 'package:flutter/material.dart';
import 'package:cloud_firestore/cloud_firestore.dart';

class GeraTabelaPadrao extends StatefulWidget {
  @override
  _GeraTabelaPadraoState createState() => _GeraTabelaPadraoState();
}

class _GeraTabelaPadraoState extends State<GeraTabelaPadrao> {
  //
  Firestore db = Firestore.instance;

  //
  void _gravaDb() {
    db.collection("Disc").document("tabelas").collection("Padrao").add({
      "titulodisc2": "PADRAO REPRESENTANTE",
      "titulo": "Padrão Agente(AGENT)",
      "cod-titulo": 1,
      "emocoes": "Aceita carinho, rejeita agressão",
      "objetivo": "Que seja aceito pelos outros",
      "julga": "Tolerância e inclusão",
      "influencia": "Dar compreensão; amizade",
      "valor": "Dá apoio, harmoniza, empatiza; orienta-se a si mesmo",
      "ecessos": "Bondade",
      "pressao":
      "Torna-se persuasivo, usando a informação ou amizades chave se necessário",
      "receia": "Discórdia; conflito",
      "aumentaria":
      "Os Agentes estão atentos tanto ao aspecto humano quanto aos aspectos da tarefa numa situação de trabalho. Com empatia e apoio, eles são bons ouvidores e são conhecidos por seus ouvidos condescendentes. Agentes também fazem com as pessoas se sintam bem quistas e necessárias por causa de sua sensibilidade às necessidades dos outros. As pessoas têm pouco medo de serem rejeitadas por Agentes. Além disso, Agentes oferecem amizade e são sensíveis a fazerem serviços pelos outros.Referente ao aspecto de tarefa do trabalho, os Agentes têm um excelente potencial para organizar um trabalho e leva-lo ao término eficientemente. Agentes são particularmente bons em fazer trabalhos para os outros que eles acham difíceis de fazer por eles mesmos. Agentes normalmente promovem a harmonia e o trabalho em grupo.No entanto, os Agentes realmente temem o conflito e a discórdia. Sua abordagem de apoio pode fazer com que os outros tolerem uma situação mais do que se comprometam a solucionar ativamente um problema. Ademais, a tendência de os Agentes não chamarem a atenção ao invés de dar-se a confrontos abertamente com pessoas agressivas, pode ser interpretada como falta de tenacidade. Ainda assim, Agentes têm um preciso grau de independência ainda que estejam preocupados em como podem encaixar-se no grupo."
    });
    db.collection("Disc").document("tabelas").collection("Padrao").add({
      "titulodisc2": "PADRAO AVALIADOR",
      "titulo": "Padrão Avaliador(APPRAISER)",
      "cod-titulo": 2,
      "emocoes": "Esforça-se muito em vestir-se bem",
      "objetivo": "Ganhar'  pelo talento",
      "julga": "Habilidade para iniciar atividades",
      "influencia": "Reconhecimento da competência",
      "valor": "Realiza objetivos através das pessoas",
      "ecessos": "Autoridade ou ingenuidade",
      "pressao": "Torna-se cansado, crítico, impaciente",
      "receia": "Fracassando'; causando má impressão visual aos outros",
      "aumentaria":
      "finalização individual; empatia ao demonstrar desaprovação;  acompanhar os outros "
    });
    db.collection("Disc").document("tabelas").collection("Padrao").add({
      "titulodisc2": "PADRAO CONVINCENTE",
      "titulo": "Padrão Avaliador(Persuader)",
      "cod-titulo": 3,
      "emocoes": "Confia nos demais; é entusiasta",
      "objetivo": "Autoridade e prestígio; símbolos de status",
      "julga": "Habilidade de verbalizar; flexibilidade",
      "influencia": "Comportamento aberto e simpático; habilidade verbal",
      "valor":
      "Vende e fecha; delega responsabilidade; é equilibrado(a) e confiante",
      "ecessos": "Entusiasmo; habilidade de vender; otimismo",
      "pressao":
      "Torna-se indeciso(a) e fácil de persuadir; torna-se organizado(a) para causar uma boa impressão",
      "receia": "Ambiente fixo; relacionamentos complexos",
      "aumentaria":
      "tarefas desafiantes; atenção a serviços direcionados para tarefas e detalhes-chave; análise objetiva de dados ."
    });
    db.collection("Disc").document("tabelas").collection("Padrao").add({
      "titulodisc2": "PADRAO ORIENTADOR",
      "titulo": "Padrão Consultor(COUNSELOR)",
      "cod-titulo": 4,
      "emocoes": "Comunicativo, afetivo e compreensivo",
      "objetivo": "Amizade; felicidade",
      "julga":
      "Aceita de forma positiva; geralmente olhando o que as pessoas têm de bom",
      "influencia":
      "Relações pessoais; praticando a política do “estar aberto”",
      "valor":
      "Estável, previsível; grande rol de amizades; é bom ao ouvir sentimentos",
      "ecessos": "Abordagem indireta; é indulgente",
      "pressao":
      "Torna-se demasiadamente flexível e íntimo; crédulo demais sem se diferenciar das outras pessoas",
      "receia": "Pressionar as pessoas; ser acusado de ‘bulling’",
      "aumentaria": "atenção às prazos finais; iniciativa de fazer a tarefa"
    });
    db.collection("Disc").document("tabelas").collection("Padrao").add({
      "titulodisc2": "PADRAO CRIADOR",
      "titulo": "Padrão Criativo(CREATIVE)",
      "cod-titulo": 5,
      "emocoes": "Aceita agressões; pode ter sua expressão restringida",
      "objetivo": "Domínio; realizações únicas",
      "julga":
      "Padrões pessoais; ideias graduais para deixar as coisas prontas",
      "influencia":
      "Estabelecer um ritmo para desenvolver sistemas e abordagens inovadoras",
      "valor": "Pioneiro ou o que planeja mudanças",
      "ecessos": "Rispidez; crítico ou com atitude condescendente",
      "pressao":
      "Facilmente aborrecido com a rotina do trabalho; mal-humorado quando controlado; age de forma independente",
      "receia": "De não ser influente; se falhar em atingir seus padrões",
      "aumentaria":
      "cordialidade; comunicação polida; cooperação efetiva da equipe; reconhecimento de que penalidades existem"
    });
    db.collection("Disc").document("tabelas").collection("Padrao").add({
      "titulodisc2": "PADRAO REALIZADOR",
      "titulo": "Padrão Empreendedor(ACHIEVER)",
      "cod-titulo": 6,
      "emocoes": "Produtivo, diligente; demonstra frustração",
      "objetivo": "Realizações pessoais, algumas vezes às custas do objetivo do grupo",
      "julga": "Resultados concretos conquistados",
      "influencia": "A responsabilidade pelo próprio trabalho",
      "valor": "Estabelece e completa as esferas de resultados chave para si",
      "ecessos": "Confiança em si mesmo, absorção na tarefa",
      "pressao": "Fica frustrado e impaciente; se torna mais “fazedor” e menos “delegante”",
      "receia": "Dos outros com padrões de trabalho competitivos ou inferiores influenciando os resultados",
      "aumentaria": "redução de pensamentos  “ou – ou”; ter claro a prioridade da tarefa e as abordagens opcionais; desejo de se comprometer com os benefícios de longa duração em curto prazo"
    });
    db.collection("Disc").document("tabelas").collection("Padrao").add({
      "titulodisc2": "PADRAO ESPECIALISTA",
      "titulo": "Padrão Especialista(Specialist)",
      "cod-titulo": 7,
      "emocoes": "Moderação, adaptação calculadas",
      "objetivo": "Manter a situação sem mudança; ambiente controlado",
      "julga": "Padrões de amizade, depois competência",
      "influencia": "Consistência de desempenho; acomodar os outros",
      "valor": "È planejador de curto prazo; previsível, consistente; mantém passo constante",
      "ecessos": "Modéstia; tarefas de risco baixo; resistência passiva à inovação",
      "pressao": "Torna-se adaptável aos que têm autoridade e que pensam em equipe",
      "receia": "Mudança, desorganização",
      "aumentaria": "divisão de suas ideias; autoconfiança baseada em retroinformação; métodos de atalho"
    });
    db.collection("Disc").document("tabelas").collection("Padrao").add({
      "titulodisc2": "Padrão Estreito(Tight)",
      "titulo": "Padrão Estreito(Tight)",
      "cod-titulo": 8,
      "emocoes": "  ",
      "objetivo" : " ",
      "julga": " ",
      "influencia" : " ",
      "valor": " ",
      "ecessos" : " ",
      "pressao": " ",
      "receia" :  " ",
      "aumentaria": "Antes de ir adiante, revise a pontuação de seu grafico de perfil pela possibilidade de erros feitos ao computar suas respostas ou ao colocar no diagrama sua pontuação. Um Padrão Turno-extra ocorre quando os todos os quatro pontos no diagrama ficam posicionados na parte superior do grafico. Isso indica que a pessoa considerou todos os quatro estilos de comportamento sendo de importancia igualmente alta. Como resultado, a forma do perfil não se encaixa em nenhum dos Perfis de Padrão Clássico mais comuns.Os Padrões Clássicos representam combinações de pontuação alta e baixa no diagrama e o Padrão Turno-extra tem somente pontos no alto do diagrama. Quando um Turno-extra ocorre no Gráfico III, é recomendável que one dos outros dois gráficos seja usado para interpretação, lembrando que Gráfico I ou Gráfico II representa apenas metada das respostas. Retomar o Perfil com um foco mais claro pode ajudar."
    });
    db.collection("Disc").document("tabelas").collection("Padrao").add({
      "titulodisc2": "PADRAO INPIRADOR",
      "titulo": "Padrão Inspirador(Inspirational)",
      "cod-titulo": 9,
      "emocoes": "Aceita agressividade; tende a, externamente, mostrar menos sua necessidade de afeto",
      "objetivo": "Controlar o ambiente ou quem está ao seu redor",
      "julga": "Como externam a força pessoal, o caráter e o poder social",
      "influencia": "Charme; direcionamento, ameaça; uso de recompensa",
      "valor": "Iinstigador de pessoas', principia, exige, elogia, disciplina",
      "ecessos": "Abordagem do tipo “o fim justifica os meios”",
      "pressao": "Torna-se manipulador; briguento, beligerante",
      "receia": "De ser muito fraco; perda do status social",
      "aumentaria": "sensibilidade autêntica; boa vontade em ajudar os outros a serem bem sucedidos em seu próprio negócio"
    });
    db.collection("Disc").document("tabelas").collection("Padrao").add({
      "titulodisc2": "PADRAO INVESTIGADOR",
      "titulo": "Padrão Investigador(lnvestigator)",
      "cod-titulo": 10,
      "emocoes": "Desapaixonado; com autodisciplina",
      "objetivo": "Poder nos papéis formais, posições e autoridade",
      "julga": "Uso de informação factual",
      "influencia": "Determinação, tenacidade",
      "valor": "Abrangente na execução do projeto, trabalha com determinação em tarefas individuais ou em grupo",
      "ecessos": "Rispidez, é desconfiado dos outros",
      "pressao": "Tende a internalizar os conflitos; remoem o que de errado foi feito a eles",
      "receia": "Envolvimento com as massas; fazem adotar ideias abstratas",
      "aumentaria": "flexibilidade; aceitar as outras pessoas; envolvimento pessoal com os outros"
    });
    db.collection("Disc").document("tabelas").collection("Padrao").add({
      "titulodisc2": "PADRAO VOLTADO A RESULTADOR",
      "titulo": "Padrão Orientado por resultado(Result-Oriented)",
      "cod-titulo": 11,
      "emocoes": "Força do ego altamente verbalizado; demonstra individualidade difícil",
      "objetivo": "Autoritarismo e independência",
      "julga": "Habilidade de realizar a tarefa rapidamente",
      "influencia": "Caráter forte; persistência",
      "valor": "Mostra atitude e ação",
      "ecessos": "Impaciência; compete no perde-ganha",
      "pressao": "Torna-se crítico e procurando falhas; resistente a participação em equipe; pode ultrapassar limites",
      "receia": "Outros tirarem vantagem dele; lentidão especialmente em atividades de tarefa; é muito “suave” e “íntimo” com os outros",
      "aumentaria": "Externar o que racionalizam; buscar outras ideias e pontos de vista sobre os objetivos ao solucionar problemas; preocupação verdadeira com os outros; paciência e humildade"
    });
    db.collection("Disc").document("tabelas").collection("Padrao").add({
      "titulodisc2": "Padrão Overshift",
      "titulo": "Padrão Overshift",
      "cod-titulo": 12,
      "emocoes": " ",
      "objetivo" : " ",
      "julga": " " ,
      "influencia" : " ",
      "valor": " ",
      "ecessos" : " ",
      "pressao": " ",
      "receia" : " ",
      "aumentaria": "Antes de ir adiante, revise a pontuação de seu grafico de perfil pela possibilidade de erros feitos ao computar suas respostas ou ao colocar no diagrama sua pontuação. Um Padrão Turno-extra ocorre quando os todos os quatro pontos no diagrama ficam posicionados na parte superior do grafico. Isso indica que a pessoa considerou todos os quatro estilos de comportamento sendo de importancia igualmente alta. Como resultado, a forma do perfil não se encaixa em nenhum dos Perfis de Padrão Clássico mais comuns.Os Padrões Clássicos representam combinações de pontuação alta e baixa no diagrama e o Padrão Turno-extra tem somente pontos no alto do diagrama. Quando um Turno-extra ocorre no Gráfico III, é recomendável que one dos outros dois gráficos seja usado para interpretação, lembrando que Gráfico I ou Gráfico II representa apenas metada das respostas. Retomar o Perfil com um foco mais claro pode ajudar"
    });
    db.collection("Disc").document("tabelas").collection("Padrao").add({
      "titulodisc2": "PADRAO DE PROMOTOR",
      "titulo": "Padrão Patrocinador(Promoter)",
      "cod-titulo": 13,
      "emocoes": "Boa vontade em aceitar os outros",
      "objetivo": "Aprovação, popularidade",
      "julga": "Habilidades verbais",
      "influencia": "Elogio, oportunidades, favores",
      "valor": "Alivia as tensões;  promove projetos e pessoas ",
      "ecessos": "Elogio, otimismo",
      "pressao": "Torna-se retraído, sensível a críticas",
      "receia": "Perda da aceitação social e da autoestima",
      "aumentaria": "controle do tempo; objetividade; senso de urgência; controle emocional; acompanhamento do que prometeu, das tarefas"
    });
    db.collection("Disc").document("tabelas").collection("Padrao").add({
      "titulodisc2": "PADRAO PENSADOR OBJETICO",
      "titulo": "Padrão Pensador Objetivo(Objective)",
      "cod-titulo": 14,
      "emocoes": "Tende a rejeitar as agressões interpessoais",
      "objetivo": "A precisão",
      "julga": "A habilidade de pensar logicamente",
      "influencia": "Dados factuais, argumentos racionais",
      "valor": "Define, esclarece; obtém informação; avalia; testa",
      "ecessos": "A análise",
      "pressao": "Tica preocupado",
      "receia": "Atos irracionais; do ridículo",
      "aumentaria": "revelar-se aos outros; dividir com os outros seus pensamentos e opiniõesPensadores Objetivos tendem a ter habilidade de pensamento altamente desenvolvido para a crítica. Eles enfatizam a importância de tirar conclusões baseando ações em fatos, buscando a precisão e a exatidão em tudo que fazem. No entanto, para gerir suas atividades laborais eficientemente, Pensadores Objetivos a miúde combinam informação intuitiva com fatos que eles reuniram. Quando têm dúvida sobre algum modo de ação, eles evitam fazer-se de tolos através de uma preparação meticulosa. Por exemplo, Pensadores Objetivos irão dominar completamente uma habilidade sozinhos antes de usa-la em trabalho em grupo.Pensadores Objetivos preferem trabalhar com pessoas que, como eles, estejam interessadas em manter um ambiente de trabalho tranquilo. Considerados tímidos por alguns, eles podem ser reticentes em expressar seus sentimentos. Particularmente, eles ficam desconfortáveis com pessoas agressivas. Apesar dessa aparência lenitiva, Pensadores Objetivos têm uma necessidade de controlar seu ambiente. Eles tendem a externar esse controle indiretamente por meio de requererem adesão a regras e padrões.Pensadores Objetivos estão preocupados com a resposta “certa” e podem ter problemas ao tomar decisões em situações ambíguas. Tendo tendências à preocupação, eles podem ficar atolados em “analysis paralysis” (análise paralítica*). Muito frequentemente quando comentem um erro, Pensadores Objetivos hesitam em reconhecê-lo. Ao invés disso, eles mergulham em pesquisar informações que ainda possa embasar seu posicionamento."
    });
    db.collection("Disc").document("tabelas").collection("Padrao").add({
      "titulodisc2": "PADRAO PERFECCIONSTA",
      "titulo": "Padrão Perfeccionista(Perfectionist)",
      "cod-titulo": 15,
      "emocoes": "Competente ao fazer as coisas certas; contido; precavido",
      "objetivo": "Estável, realizações previsíveis",
      "julga": "Padrões precisos",
      "influencia": "Atenção a detalhes e precisão",
      "valor": "Conscencioso; matém padrões; controle de qualidade",
      "ecessos": "Procedimentos e controles “à prova de falhas”; super-dependência das pessoas, produtos e processos com os quais trabalhou no passado",
      "pressao": "Torna-se amável, diplomático",
      "receia": "Rivalidade",
      "aumentaria": "flexibilidade de papel; independência e interdependência; crença em si como uma pessoa que vale a pena em seu próprio direito"
    });
    db.collection("Disc").document("tabelas").collection("Padrao").add({
      "titulodisc2": "PADRAO DESBRAVADOR",
      "titulo": "Padrão Planejador(DEVELOPER)",
      "cod-titulo": 16,
      "emocoes": "Individualista na busca de necessidades pessoais",
      "objetivo": "Uma nova oportunidade",
      "julga": "Habilidade para atingir os padrões do Planejador",
      "influencia": "Encontrar soluções para os problemas; projetar um sentido pessoal de poder",
      "valor": "Evitar “jogar o macaco no ombro do outro”; novo ou inovador solucionador de problemas ",
      "ecessos": "Controle de pessoas e situações para atingir os seus próprios resultados",
      "pressao": "Isola-se quando as coisas precisam ser feitas; agressivo se o individualismo for ameaçado ou se as portas do desafio estiverem fechadas",
      "receia": "Fastio; perda do controle",
      "aumentaria": "paciência, empatia; participação e a colaboração com os outros; executar o projeto e atenção com o controle da qualidade"
    });
    db.collection("Disc").document("tabelas").collection("Padrao").add({
      "titulodisc2": "PADRAO PRATICANTE",
      "titulo": "Padrão Profissional Liberal(Practitioner)",
      "cod-titulo": 17,
      "emocoes": "Deseja continuar com os outros nos esforços e na performance técnica",
      "objetivo": "Ambições grandes para crescimento pessoal",
      "julga": "Autodisciplina; suas posições e avanços",
      "influencia": "Confiança em manejar novas habilidades; desenvolver as próprias ações e procedimentos",
      "valor": "Especialista em solucionar problemas pessoais e técnicos; versado na especialidade",
      "ecessos": "Atenção demasiada aos objetivos pessoais; de alguma maneira irrealista quanto a espectativas dos outros",
      "pressao": "Torna-se retraído; sensível a críticas",
      "receia": "De ser previsível demais; de não ser reconhecido como “especialista”",
      "aumentaria": "autêntica colaboração pelo bem comum; delegar tarefas chave às pessoas competentes"
    });
    db.collection("Disc").document("tabelas").collection("Padrao").add({
      "titulodisc2": "Padrão Subturno(Undershift)",
      "titulo": "Padrão Subturno(Undershift)",
      "cod-titulo": 18,
      "emocoes": " ",
      "objetivo" : " ",
      "julga": " ",
      "influencia" : " ",
      "valor": " ",
    "ecessos" : " ",
      "pressao": " ",
    "receia" : " ",
      "aumentaria": "Antes de ir adiante, revise a pontuação de seu grafico de perfil pela possibilidade de erros feitos ao computar suas respostas ou ao colocar no diagrama sua pontuação. Um Padrão Turno-extra ocorre quando os todos os quatro pontos no diagrama ficam posicionados na parte superior do grafico. Isso indica que a pessoa considerou todos os quatro estilos de comportamento sendo de importancia igualmente alta. Como resultado, a forma do perfil não se encaixa em nenhum dos Perfis de Padrão Clássico mais comuns.Os Padrões Clássicos representam combinações de pontuação alta e baixa no diagrama e o Padrão Turno-extra tem somente pontos no alto do diagrama. Quando um Turno-extra ocorre no Gráfico III, é recomendável que one dos outros dois gráficos seja usado para interpretação, lembrando que Gráfico I ou Gráfico II representa apenas metada das respostas. Retomar o Perfil com um foco mais claro pode ajudar."
    });
  }


@override
Widget build(BuildContext context) {
  return Scaffold(
      body: Container(
        child: SingleChildScrollView(
          scrollDirection: Axis.vertical,
          child: RaisedButton(
            child: Text(
              "Gera Tabela",
              style: TextStyle(fontSize: 60),
            ),
            onPressed: () {
              print("PRESIONOU BOTÃO");
              _gravaDb();
            },
          ),
        ),
      ));
}}
