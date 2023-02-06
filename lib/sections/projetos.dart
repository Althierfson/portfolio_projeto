import 'package:flutter/material.dart';
import 'package:portfolio_projeto/entidades/job.dart';
import 'package:portfolio_projeto/projeto_page.dart';

class Projetos extends StatefulWidget {
  final String titulo;
  final List<Job> jobs;
  const Projetos({super.key, required this.titulo, required this.jobs});

  @override
  State<Projetos> createState() => _ProjetosState();
}

class _ProjetosState extends State<Projetos> {
  late String titulo;
  late List<Job> jobs;
  int selecionado = 0;

  @override
  void initState() {
    titulo = widget.titulo;
    jobs = widget.jobs;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return Container(
      //padding: const EdgeInsets.only(top: 100, bottom: 100),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Color(0xFF77C159)),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          widget.titulo,
          style: const TextStyle(
              fontSize: 40, color: Colors.white, fontWeight: FontWeight.w900),
        ),
        const SizedBox(
          height: 50,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          children: [
            GestureDetector(
              onTap: () {
                setState(() {
                  selecionado >= 1 ? selecionado-- : selecionado;
                });
              },
              child: const Icon(
                Icons.arrow_back_ios,
                size: 100,
              ),
            ),
            const SizedBox(
              width: 20,
            ),
            projetoSelecionado(context),
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selecionado < jobs.length - 1 ? selecionado++ : selecionado;
                });
              },
              child: const Icon(
                Icons.arrow_forward_ios,
                size: 100,
              ),
            ),
          ],
        )
      ]),
    );
  }

  Widget projetoSelecionado(BuildContext context) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProjetoPage(projeto: jobs[selecionado]),
              ));
        },
        child: Container(
          width: 1920 * 0.20,
          height: 1080 * 0.20,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(jobs[selecionado].capaPath))),
        ));
  }
}
