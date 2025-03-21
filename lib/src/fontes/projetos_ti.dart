import 'package:portfolio_projeto/src/entidades/job.dart';
import 'package:portfolio_projeto/src/entidades/links.dart';

List<Job> projetosTi = [
  Job(
      titulo: "PJe2x Mobile",
      texto:
          "O aplicativo PJe2x é uma ferramenta essencial para os magistrados do Tribunal Regional da 5ª Região, "
          "permitindo que eles assinem, leiam e editem processos diretamente de seus dispositivos móveis. "
          "Feito para Android e IOS, com a framework flutter, o app se conectar com o PDPJ-br do CNJ.",
      capaPath: "assets/projetosTI/pje2x_mobile/capa.png",
      assets: [
        "assets/projetosTI/pje2x_mobile/pje_1.jpg",
        "assets/projetosTI/pje2x_mobile/pje_2.jpg",
        "assets/projetosTI/pje2x_mobile/pje_3.jpg",
        "assets/projetosTI/pje2x_mobile/pje_5.jpg",
        "assets/projetosTI/pje2x_mobile/pje_6.jpg",
        "assets/projetosTI/pje2x_mobile/pje_7.jpg",
      ],
      links: [
        Link(
            nome: "Portal do projeto",
            url: "https://residenciaregional.jfrn.jus.br/")
      ],
      features: [
        "Flutter",
        "Bloc",
        "API",
        "Teste Unitarios",
        "android"
      ]),
  // Job(
  //     titulo: "Astronomy pictures",
  //     texto:
  //         "O Astronomy Picture é um aplicativo para dispositivos móveis que permite aos usuários explorar "
  //         "uma vasta biblioteca de imagens e vídeos relacionados à astronomia e ao espaço. O APP é desenvolvido "
  //         "em Flutter, esse APP consume a API APOD oferecida pela Nasa",
  //     capaPath: "assets/projetosTI/astronomy_picture/capa.png",
  //     assets: [
  //       "assets/projetosTI/astronomy_picture/Screenshot_1.png",
  //       "assets/projetosTI/astronomy_picture/Screenshot_2.png",
  //       "assets/projetosTI/astronomy_picture/Screenshot_3.png",
  //       "assets/projetosTI/astronomy_picture/Screenshot_4.png",
  //       "assets/projetosTI/astronomy_picture/Screenshot_5.png",
  //     ],
  //     links: [
  //       Link(
  //           nome: "Play Store",
  //           url:
  //               "https://play.google.com/store/apps/details?id=com.cajuapps.astronomy_picture"),
  //       Link(
  //           nome: "Repositorio GitHub",
  //           url: "https://github.com/Althierfson/astronomy_picture")
  //     ]),
  // Job(
  //     titulo: "MinesWeeper",
  //     texto:
  //         "O classico jogo de campo minado, o usuario pode navegar entre diferentes dificudades, a também conseguir "
  //         "consquista com base aveluir, o jogo possuir um versão gratuita e paga. Para o desenvolvimento foi usado "
  //         "Flutter, o APP e possuir integração com o API de pagametnos da play store.",
  //     capaPath: "assets/projetosTI/minesweeper/capa.png",
  //     assets: [
  //       "assets/projetosTI/minesweeper/screenshoot_1.png",
  //       "assets/projetosTI/minesweeper/screenshoot_2.png",
  //       "assets/projetosTI/minesweeper/screenshoot_3.png",
  //       "assets/projetosTI/minesweeper/screenshoot_4.png",
  //       "assets/projetosTI/minesweeper/screenshoot_5.png"
  //     ],
  //     links: [
  //       Link(
  //           nome: "Play Store",
  //           url:
  //               "https://play.google.com/store/apps/details?id=com.cajuapps.minesweeper")
  //     ]),
  // Job(
  //     titulo: "À vista ou a Prazo",
  //     texto:
  //         "O APP volta para axiliar na tomada de decição de comprar, o usuario pode verificar se vale apena pagar "
  //         "a prazo ou a vista, verificando o rendimento e economia ao longo do tempo. Feito em Flutter e acessando a "
  //         "API da HgBrasil, o APP esta disponivel para android.",
  //     capaPath: "assets/projetosTI/aVistaOuAPrazo/capa.png",
  //     assets: [
  //       "assets/projetosTI/aVistaOuAPrazo/Screenshot_1.jpg",
  //       "assets/projetosTI/aVistaOuAPrazo/Screenshot_2.jpg",
  //       "assets/projetosTI/aVistaOuAPrazo/Screenshot_3.jpg",
  //       "assets/projetosTI/aVistaOuAPrazo/Screenshot_4.jpg",
  //       "assets/projetosTI/aVistaOuAPrazo/Screenshot_5.jpg",
  //     ],
  //     links: [
  //       Link(
  //           nome: "Veja o Projeto no meu gitHub",
  //           url: "https://github.com/Althierfson/aVistaOuPrazo"),
  //       Link(
  //           nome: "Veja o App na PlayStore",
  //           url:
  //               "https://play.google.com/store/apps/details?id=com.cajugames.avistaouaprazo")
  //     ]),
//   Job(
//       titulo: "Banco de Talentos Mobile",
//       texto: """
// O aplicativo Banco de Talentos Mobile é uma extensão do sistema Banco de Talentos em desenvolvimento pelo Tribunal Regional da 5ª Região em colaboração com a UFRN. Como parte da minha pós-graduação em Tecnologia da Informação, tive a oportunidade de desenvolver esse aplicativo aplicando várias técnicas de desenvolvimento.

// Durante o desenvolvimento, apliquei a metodologia Clean Architecture, que permitiu criar um projeto limpo, de fácil leitura, testável e de fácil manutenção. Também utilizei a técnica de Test Driven Development (TDD) para garantir um código mais confiável e reduzir a quantidade de bugs no aplicativo.

// Além disso, aproveitei a oportunidade para aplicar o padrão de design BLoC no controle dos estados da aplicação, aproveitando as vantagens do framework Flutter.

// Como o projeto foi desenvolvido apenas por mim, pude exercitar minha autonomia e responsabilidade na tomada de decisões de design e implementação do aplicativo. Ao concluir o projeto, adquiri habilidades em desenvolvimento móvel, arquitetura de software, teste automatizado e design de interfaces de usuário.
//           """,
//       capaPath: "assets/projetosTI/banco_de_talentos/miniatura.jpg",
//       assets: [
//         "assets/projetosTI/banco_de_talentos/Screenshot_1.jpg",
//         "assets/projetosTI/banco_de_talentos/Screenshot_2.jpg",
//         "assets/projetosTI/banco_de_talentos/Screenshot_3.jpg",
//         "assets/projetosTI/banco_de_talentos/Screenshot_4.jpg",
//         "assets/projetosTI/banco_de_talentos/Screenshot_5.jpg",
//         "assets/projetosTI/banco_de_talentos/Screenshot_6.jpg",
//         "assets/projetosTI/banco_de_talentos/Screenshot_7.jpg"
//       ]),
//   Job(
//       titulo: "Space Virus Game",
//       texto: """
// O Space Defender é um jogo mobile desenvolvido em Godot, uma engine gratuita e de código aberto que está ganhando destaque na indústria de jogos.

// Nesse jogo, você é responsável por defender sua base espacial contra o ataque de vírus alienígenas. O jogador precisa destruir os inimigos antes que eles destruam a base.

// O jogo conta com uma jogabilidade dinâmica e desafiadora, com inimigos cada vez mais difíceis.

// O Space Defender foi desenvolvido como um projeto de verão, visando explorar novas tecnologias e aprimorar habilidades de desenvolvimento de jogos.

// Atualmente, está disponível apenas para dispositivos Android na Play Store.
// """,
//       capaPath: "assets/projetosTI/space_virus/minuatura.png",
//       assets: [
//         "assets/projetosTI/space_virus/space_1.webp",
//         "assets/projetosTI/space_virus/space_2.webp",
//         "assets/projetosTI/space_virus/space_3.webp"
//       ],
//       links: [
//         Link(
//             nome: "Play Store",
//             url:
//                 "https://play.google.com/store/apps/details?id=com.cajugames.projetod&hl=pt_BR&gl=US")
//       ]),
  Job(
      titulo: "LoviMobi APP (Alpha)",
      texto:
          "Nesse aplicativo os clientes da empresa podem ver os leads que foi gerado para ele no Facebook e OLX."
          "Foi usado Flutter no Front-End e Firebase no Back-End com javascript."
          "Usando o Firebase function o sistema se conecta com API do Facebook para coletar"
          "dados de usuários que se cadastraram em anúncios. Conexão com o Google drive para "
          "salvar arquivos dos usuários. A aplicação se conecta com o Trello para gerar fluxo"
          "de trabalho com base no preenchimento de formulários no aplicativo",
      capaPath: "assets/projetosTI/capa_lovimobi.png",
      links: [
        Link(nome: "LoviMobi APP", url: "https://imoveis-top-10-app.web.app/")
      ],
      features: [
        "Flutter",
        "Firebase",
        "APIs",
        "Mobx",
        "Clean Architecture",
        "JavaScript"
      ]),
  Job(
      titulo: "Escribo Educação do Seu Jeito",
      texto:
          "Nesse aplicativo os crianças podem aprender enquanto se divertem. O APP também permite que"
          "Professores e administradores, organizem anos letivos, bem como acompanhe o desempenho dos alunos"
          "Nesse projeto trabalhei como Front-End com Flutter e Back-End com NodeJs e Strapi"
          "No front implementei novas funcionalidades e manutenção, implementação de novos design e testes,"
          "e conexão com API. No back trabalhei com JavaScript para criação de end-point para relatórios."
          "Esses relatórios continham informações de desempenho de alunos, classes e escolas, esse dado eram"
          "analisados por IA (GPT-4) para feedbacks personalizados.",
      capaPath: "assets/projetosTI/capa_escribo.webp",
      links: [
        Link(
            nome: "Play Store",
            url:
                "https://play.google.com/store/apps/details?id=br.com.escribo.freireapp&utm_source=latam_Med")
      ],
      features: [
        "Flutter",
        "Firebase",
        "APIs",
        "Mobx",
        "Clean Architecture",
        "JavaScript",
        "NodeJs",
        "Strapi",
        "GPT-4",
      ]),
  Job(
      titulo: "Bible Notes",
      texto:
          "Uma solução prática para organizar notas e comentários sobre passagens bíblicas.. O APP é Totalmente"
          "integrado com Firebase para uma experiência intuitiva e segura. Autenticação, banco de dados Firestore "
          "e armazenamento de imagens com o banco Storage do Firebase.",
      capaPath: "assets/projetosTI/bible_notes/capa.png",
      links: [
        Link(
            nome: "Play Store",
            url:
                "https://play.google.com/store/apps/details?id=com.cajuapps.biblenote")
      ],
      features: [
        "Flutter",
        "Firebase",
        "Play Store"
      ]),
];
