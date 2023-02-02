import 'package:flutter/material.dart';
import 'package:portfolio_projeto/entidades/job.dart';
import 'package:portfolio_projeto/sections/contatos.dart';
import 'package:portfolio_projeto/sections/foot.dart';
import 'package:portfolio_projeto/sections/formacoes.dart';
import 'package:portfolio_projeto/sections/habilidades.dart';
import 'package:portfolio_projeto/sections/header.dart';
import 'package:portfolio_projeto/sections/projetos.dart';
import 'package:portfolio_projeto/sections/sobre_mim.dart';

class PortfolioPage extends StatelessWidget {
  const PortfolioPage({super.key});

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
            Projetos(titulo: "Meus melhores projetos", jobs: [job, job1, job2]),
            const Formacao(),
            const Habilidades(),
            const Contatos(),
            Projetos(
                titulo: "Projetos fora da TI",
                jobs: [jobFora, jobFora1, jobFora2]),
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

Job job1 = Job(
    titulo: "PJe2x Mobile 1",
    texto: "O pje2x Mobile é um aplicativo",
    capaPath: "assets/imagens/fundo_header.png");

Job job2 = Job(
    titulo: "PJe2x Mobile 2",
    texto: "O pje2x Mobile é um aplicativo",
    capaPath: "assets/imagens/fundo_header.png");

Job jobFora = Job(
    titulo: "TechSocial",
    texto: "O TechSocial é",
    capaPath: "assets/imagens/fundo_header.png");

Job jobFora1 = Job(
    titulo: "TechSocial 1",
    texto: "O TechSocial é 1",
    capaPath: "assets/imagens/fundo_header.png");

Job jobFora2 = Job(
    titulo: "TechSocial 2",
    texto: "O TechSocial é 2",
    capaPath: "assets/imagens/fundo_header.png");
