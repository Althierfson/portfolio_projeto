import 'package:flutter/material.dart';
import 'package:portfolio_projeto/entidades/job.dart';
import 'package:portfolio_projeto/fontes/read_projetos.dart';
import 'package:portfolio_projeto/sections/contatos.dart';
import 'package:portfolio_projeto/sections/formacoes.dart';
import 'package:portfolio_projeto/sections/habilidades.dart';
import 'package:portfolio_projeto/sections/header.dart';
import 'package:portfolio_projeto/sections/projetos.dart';
import 'package:portfolio_projeto/sections/sobre_mim.dart';

class PortfolioPage extends StatefulWidget {
  const PortfolioPage({super.key});

  @override
  State<PortfolioPage> createState() => _PortfolioPageState();
}

class _PortfolioPageState extends State<PortfolioPage> {
  ReadProjetos readProjetos = ReadProjetos();
  PageController controller = PageController();
  int selecionado = 0;

  final List<String> menu = <String>[
    "Home",
    "Sobre Mim",
    "Projetos",
    "Formações",
    "Habilidades",
    "Contatos"
  ];

  List<Job> readFonte(TipoProjeto tipoProjeto) {
    return readProjetos.returnJobs(tipoProjeto);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Column(
        children: [
          Container(
            height: 50,
            decoration: const BoxDecoration(color: Colors.blue),
            child: Row(
                mainAxisAlignment: MainAxisAlignment.end,
                children: List.generate(menu.length, (index) {
                  return TextButton(
                    onPressed: () {
                      scrollToIndex(index);
                      selecionado = index;
                    },
                    child: Text(
                      menu[index],
                      style: const TextStyle(color: Colors.white, fontSize: 18),
                    ),
                  );
                })),
          ),
          Expanded(
            child: Padding(
              padding: const EdgeInsets.only(left: 10, right: 10),
              child: PageView(
                scrollDirection: Axis.vertical,
                pageSnapping: false,
                controller: controller,
                children: [
                  Header(
                    onContato: () {
                      scrollToIndex(5);
                    },
                  ),
                  const SobreMim(),
                  Projetos(
                      titulo: "Meus melhores projetos",
                      jobs: readFonte(TiposDeProjeto.projetosTI)),
                  const Formacao(),
                  Habilidades(
                    habilidades: readFonte(TiposDeProjeto.habilidades),
                  ),
                  const Contatos(),
                  Projetos(
                      titulo: "Projetos fora da TI",
                      jobs: readFonte(TiposDeProjeto.outrosProjetos)),
                ],
              ),
            ),
          ),
        ],
      ),
    );
  }

  void scrollToIndex(int index) {
    controller.animateToPage(index,
        duration: const Duration(seconds: 2),
        curve: Curves.fastLinearToSlowEaseIn);
  }
}
