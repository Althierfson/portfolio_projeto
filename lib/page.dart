import 'package:flutter/material.dart';
import 'package:portfolio_projeto/entidades/job.dart';
import 'package:portfolio_projeto/fontes/read_projetos.dart';
import 'package:portfolio_projeto/sections/contatos.dart';
import 'package:portfolio_projeto/sections/foot.dart';
import 'package:portfolio_projeto/sections/formacoes.dart';
import 'package:portfolio_projeto/sections/habilidades.dart';
import 'package:portfolio_projeto/sections/header.dart';
import 'package:portfolio_projeto/sections/projetos.dart';
import 'package:portfolio_projeto/sections/sobre_mim.dart';

class PortfolioPage extends StatelessWidget {
  final ReadProjetos readProjetos = ReadProjetos();
  PortfolioPage({super.key});

  List<Job> readFonte(TipoProjeto tipoProjeto) {
    return readProjetos.returnJobs(tipoProjeto);
  }

  @override
  Widget build(BuildContext context) {
    return Scaffold(
      body: Padding(
        padding: const EdgeInsets.only(left: 10, right: 10),
        child: SingleChildScrollView(
          child:
              Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
            const Header(),
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
            const Foot()
          ]),
        ),
      ),
    );
  }
}

Job job = Job(
    titulo: "PJe2x Mobile",
    texto: "O pje2x Mobile é um aplicativo",
    capaPath: "assets/imagens/fundo_header.png",
    assets: [
      "assets/imagens/fundo_header.png",
      "assets/imagens/fundo_header.png",
      "assets/imagens/fundo_header.png"
    ]);
