import 'package:flutter/material.dart';
import 'package:portfolio_projeto/src/utils/check_dispositivo.dart';
import 'package:portfolio_projeto/src/entidades/job.dart';
import 'package:portfolio_projeto/src/fontes/read_projetos.dart';
import 'package:portfolio_projeto/src/sections/contatos.dart';
import 'package:portfolio_projeto/src/sections/foot.dart';
import 'package:portfolio_projeto/src/sections/formacoes.dart';
import 'package:portfolio_projeto/src/sections/habilidades.dart';
import 'package:portfolio_projeto/src/sections/header.dart';
import 'package:portfolio_projeto/src/sections/projetos.dart';
import 'package:portfolio_projeto/src/widgets/get_offset.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  ReadProjetos readProjetos = ReadProjetos();
  PageController controller = PageController();
  ScrollController scrollController = ScrollController();
  //int selecionado = 0;

  final List<String> menu = <String>[
    "Home",
    "Projetos",
    "Habilidades",
    "Formações",
    "Contato"
  ];

  List<Widget> children = [];

  List<double> offSetList = [];

  List<Job> readFonte(TipoProjeto tipoProjeto) {
    return readProjetos.returnJobs(tipoProjeto);
  }

  @override
  void initState() {
    super.initState();
    children = [
      Header(
        onContato: () {
          scrollToIndex(5);
        },
      ),
      Projetos(
          titulo: "Meus melhores projetos",
          jobs: readFonte(TiposDeProjeto.projetosTI)),
      Habilidades(
        habilidades: readFonte(TiposDeProjeto.habilidades),
      ),
      const Formacao(),
      const Contatos(),
      const Foot()
    ];

    offSetList = List.generate(children.length, (index) => 0.0);
  }

  @override
  Widget build(BuildContext context) {
    CheckDispositivo(context);
    return Scaffold(
      appBar: CheckDispositivo.isMobile ? buildAppBarToPhone() : buildAppBar(),
      body: SingleChildScrollView(
        controller: scrollController,
        child: Column(
          children: [
            GetOffset(
              offSet: (offset) {
                offSetList[0] = offset.dy;
              },
              child: Header(
                onContato: () {
                  scrollToIndex(1);
                },
              ),
            ),
            GetOffset(
              offSet: (offset) {
                offSetList[1] = offset.dy;
              },
              child: Projetos(
                  titulo: "Projetos",
                  jobs: readFonte(TiposDeProjeto.projetosTI)),
            ),
            GetOffset(
              offSet: (offset) {
                offSetList[2] = offset.dy;
              },
              child: Habilidades(
                habilidades: readFonte(TiposDeProjeto.habilidades),
              ),
            ),
            GetOffset(
                offSet: (offset) {
                  offSetList[3] = offset.dy;
                },
                child: const Formacao()),
            GetOffset(
                offSet: (offset) {
                  offSetList[4] = offset.dy;
                },
                child: const Contatos()),
            const Foot()
          ],
        ),
      ),
    );
  }

  AppBar buildAppBar() {
    return AppBar(
      actions: List.generate(menu.length, (index) {
        return TextButton(
          onPressed: () {
            scrollToIndex(index);
          },
          child: Text(
            menu[index],
            style: const TextStyle(color: Colors.white, fontSize: 18),
          ),
        );
      }),
    );
  }

  AppBar buildAppBarToPhone() {
    return AppBar(actions: [
      PopupMenuButton(
        icon: const Icon(Icons.menu),
        itemBuilder: (_) => List.generate(menu.length, (index) {
          return PopupMenuItem(
            value: index,
            child: Text(
              menu[index],
              style: const TextStyle(color: Colors.black, fontSize: 18),
            ),
          );
        }),
        onSelected: (valor) {
          scrollToIndex(valor);
        },
      ),
    ]);
  }

  void scrollToIndex(int index) {
    scrollController.animateTo(offSetList[index],
        duration: const Duration(seconds: 2),
        curve: Curves.fastLinearToSlowEaseIn);
  }
}
