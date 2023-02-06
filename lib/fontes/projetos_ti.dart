import 'package:portfolio_projeto/entidades/job.dart';
import 'package:portfolio_projeto/entidades/links.dart';

List<Job> projetosTi = [
  Job(
      titulo: "PJe2x Mobile",
      texto: """
O aplicativo PJe2x é um app usado pelos magistrados da Tribunal Regional da 5ª Região! Onde eles podem assinar, ler e editar processos. Esse app faz parte do dia-adia de um magistrado.

Tive a oportunidade de trabalha na nova versão do aplicativo, participando desde da concepção inicial das telas, até o desenvolvimento.

Desenvolvido em Flutter o app, esta ainda em testes com servidores selecionados, porem vem sendo elogiados por todos que entram em contato.

Trabalhando nesse projeto como Desenvolvedor Mobile, em uma equipe com mais 4 desenvolvedores, e um gerente, dele entre em contato com metodologias ágeis como scrum, e a oportunidade de trabalhar em um projeto em equipe.

O desenvolvimento ocorreu de forma completamente remota, onde use ferramentas bastante comun nesse tipo de trabalho, como ferramentas de videoconferência (Meet, Zoom, e Teams), discord, Jira e gitlab.
""",
      capaPath: "assets/projetosTI/pje2x_mobile/miniatura.png",
      assets: [
        "assets/projetosTI/pje2x_mobile/pje_1.jpg",
        "assets/projetosTI/pje2x_mobile/pje_2.jpg",
        "assets/projetosTI/pje2x_mobile/pje_3.jpg",
        "assets/projetosTI/pje2x_mobile/pje_5.jpg",
        "assets/projetosTI/pje2x_mobile/pje_6.jpg",
        "assets/projetosTI/pje2x_mobile/pje_7.jpg",
      ]),
  Job(
      titulo: "Banco de Talentos Mobile",
      texto: """
O aplicativo Banco de Talentos Mobile é uma extensão do sistema Banco de Talentos, esse sistema vem sendo desenvolvimento pelo Tribunal Regional da 5ª Região juntamento com a UFRN.

Nesse projeto pude entrar e aplicar várias técnicas de desenvolvimento, uma delas foi o clean Architecture, uma metodologia de organização de código muito eficiente, essa arquitetura permite criar projetos mais limpos, de fácil leitura, testáveis, e de fácil manutenção.

Pude também aplicar TDD (Test Drive Development), uma técnica de desenvolvimento bastante interessa que garante um código mais confiável.

Outra técnica que puder aplicar especificamente para desenvolvimento dentro do Framework Flutter, foi o BLOC para fazer o controle dos estados da aplicação.

Esse projeto vendo sendo desenvolvido apenas por mim, e ele faz parte da minha Pôs-Graduação em Tecnologia da Informação.
          """,
      capaPath: "assets/projetosTI/banco_de_talentos/miniatura.jpg",
      assets: [
        "assets/projetosTI/banco_de_talentos/Screenshot_1.jpg",
        "assets/projetosTI/banco_de_talentos/Screenshot_2.jpg",
        "assets/projetosTI/banco_de_talentos/Screenshot_3.jpg",
        "assets/projetosTI/banco_de_talentos/Screenshot_4.jpg",
        "assets/projetosTI/banco_de_talentos/Screenshot_5.jpg",
        "assets/projetosTI/banco_de_talentos/Screenshot_6.jpg",
        "assets/projetosTI/banco_de_talentos/Screenshot_7.jpg"
      ]),
  Job(
      titulo: "Space Virus Game",
      texto: """
O Space Defente foi um projeto de "verão" que eu fiz! É um jogo onde seu objetivo é defender a sua base especial contra o ataque dos virus.

Fiz esse jogo usando a engine Godot, uma engine gratuita que vem ganhando muito destaque.

O jogo está disponível apenas para o sistemas androids e pode se baixado na PlayStore.
""",
      capaPath: "assets/projetosTI/space_virus/minuatura.png",
      assets: [
        "assets/projetosTI/space_virus/space_1.webp",
        "assets/projetosTI/space_virus/space_2.webp",
        "assets/projetosTI/space_virus/space_3.webp"
      ],
      links: [
        Link(
            nome: "Play Store",
            url:
                "https://play.google.com/store/apps/details?id=com.cajugames.projetod&hl=pt_BR&gl=US")
      ])
];
