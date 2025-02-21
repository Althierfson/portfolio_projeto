import 'package:portfolio_projeto/src/entidades/experience.dart';

List<Experience> experiencias = [
  Experience(
    posicao: "Desenvolvedor Mobile Front-end",
    empresa: "Tribunal Regional da 5ª Região",
    empresaLogo: "assets/experiencia/logo_trf5.webp", 
    periodo: "Outubro 2021 - Março 2023",
    descritions: [
      "Desenvolvi junto a uma equipe o aplicativo PJe2x Mobile em Flutter.",
      "Integração e comunicação do APP com os microsserviços do Tribunal Regional da 5ª Região.",
      "Conversa com o cliente para coleta de requisitos funcionais e não funcionais.",
      "Elaboração de documentos do projeto.",
      "Colaborei com designers e gerentes de produto para melhorar a experiência do usuário e a funcionalidade do sistema.",
      "Criação de testes unitários.",
    ],
    features: ["Flutter", "Integração com Microsserviços", "Coleta de Requisitos", "Documentação", "Experiência do Usuário", "Testes Unitários", "Scrum"],
  ),
  Experience(
    posicao: "Desenvolvedor Front-end/Back-end",
    empresa: "Escribo",
    empresaLogo: "assets/experiencia/escribo_logo.png", 
    periodo: "Janeiro 2024 - Setembro 2024",
    descritions: [
      "Atuei com desenvolvimento e manutenção de vários aplicativos e produtos desenvolvidos em Flutter e com NodeJS com JavaScript.",
      "Desenvolvi serviços no back-end com Strapi, como a implementação de relatórios de desempenho dos usuários.",
      "Integrei os serviços com inteligência artificial (GPT-4) para a criação de relatórios personalizados.",
      "Trabalhei em conjunto com a equipe de front-end para implementar funcionalidades e resolver bugs.",
      "Desenvolvimento de interface com React (HTML, JavaScript, CSS).",
    ],
    features: ["Flutter", "NodeJS", "JavaScript", "Strapi", "GPT-4", "React", "HTML", "CSS"],
  ),
  Experience(
    posicao: "Desenvolvedor Mobile Front-end",
    empresa: "IncaaS",
    empresaLogo: "assets/experiencia/incaas_logo.jpg", // Adicione o link do logo da empresa
    periodo: "Junho 2024 - Setembro 2024",
    descritions: [
      "Atuei na manutenção do APP TJRN na palma da mão em Flutter.",
      "Resolução de bugs e criação de novas features.",
      "Integração do APP com os microsserviços do TJRN na palma da mão através de APIs REST.",
    ],
    features: ["Flutter", "APIs REST", "Kanban"],
  ),
  Experience(
    posicao: "Desenvolvedor Mobile Full-Stack (Freelance)",
    empresa: "Freelance",
    empresaLogo: "", 
    periodo: "Junho 2024",
    descritions: [
      "Implementação de aplicações em Flutter.",
      "Coleta de requisitos e elaboração de documentação.",
      "Integração com microsserviços como Trello, Facebook Graph API, Eduzz API, OLX API, Google Drive.",
      "Integração de aplicações com Firebase, para autenticação, armazenamento de dados e documentos e notificações.",
    ],
    features: ["Flutter", "Coleta de Requisitos", "Integração com Microsserviços", "APIs", "Firebase"],
  ),
];
