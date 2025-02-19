import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_projeto/src/utils/check_dispositivo.dart';
import 'package:portfolio_projeto/src/theme/custom_colors.dart';
import 'package:portfolio_projeto/src/entidades/job.dart';
import 'package:portfolio_projeto/projeto_page.dart';
import 'package:url_launcher/url_launcher.dart';

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
    if (CheckDispositivo.isMobile) {
      return buildPhoneSection(context);
    } else {
      return buildDesktopSection(context);
    }
  }

  Container buildDesktopSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100, bottom: 100),
      width: MediaQuery.of(context).size.width,
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          children:
              List.generate(jobs.length < 5 ? jobs.length + 1 : 5, (index) {
            if (index == 0) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 50.0),
                child: Text(
                  widget.titulo,
                  style: GoogleFonts.zenDots(
                      fontSize: 42, fontWeight: FontWeight.bold),
                ),
              );
            }

            return Padding(
              padding: const EdgeInsets.only(bottom: 100.0),
              child: Row(
                mainAxisAlignment: MainAxisAlignment.center,
                children: [
                  Column(
                    children: [
                      Image.asset(
                        jobs[index - 1].capaPath,
                        height: 200,
                        fit: BoxFit.fitWidth,
                      ),
                      Text(
                        jobs[index - 1].titulo,
                        style: GoogleFonts.zenDots(
                            fontSize: 22,
                            fontWeight: FontWeight.bold,
                            color: Colors.black),
                      ),
                    ],
                  ),
                  const SizedBox(
                    width: 20.0,
                  ),
                  Column(
                    children: [
                      SizedBox(
                          width: 600,
                          child: Text(
                            jobs[index - 1].texto,
                            style: const TextStyle(
                                fontSize: 18, color: Colors.black),
                          )),
                      Row(
                        children: List.generate(
                            jobs[index - 1].links.length,
                            (i) => Padding(
                                  padding: const EdgeInsets.all(8.0),
                                  child: ElevatedButton(
                                      style: ElevatedButton.styleFrom(
                                        backgroundColor:
                                            CustomColors.persianBlue,
                                      ),
                                      onPressed: () {
                                        launchUrl(Uri.parse(
                                            jobs[index - 1].links[i].url));
                                      },
                                      child:
                                          Text(jobs[index - 1].links[i].nome)),
                                )),
                      )
                    ],
                  ),
                ],
              ),
            );
          })),
    );
  }

  Widget buildPhoneSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100, bottom: 100),
      decoration: const BoxDecoration(color: Colors.white),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text(
          widget.titulo,
          style: GoogleFonts.zenDots(fontSize: 42, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 50,
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                5,
                (index) => Column(
                      children: [
                        Image.asset(
                          jobs[index].capaPath,
                          height: 200,
                        ),
                        Text(
                          jobs[index].titulo,
                          style: GoogleFonts.zenDots(
                              fontSize: 26,
                              fontWeight: FontWeight.bold,
                              color: Colors.black),
                        ),
                        Container(
                          width: MediaQuery.of(context).size.width,
                          padding: const EdgeInsets.all(15.0),
                          child: Text(
                            jobs[index].texto,
                            style: const TextStyle(fontSize: 16),
                            textAlign: TextAlign.justify,
                          ),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        Container(
                          height: 1,
                          width: 100,
                          decoration: const BoxDecoration(color: Colors.black),
                        ),
                        const SizedBox(
                          height: 15,
                        ),
                        SingleChildScrollView(
                          scrollDirection: Axis.horizontal,
                          child: Row(
                              children: List.generate(
                                  jobs[index].links.length,
                                  (iLink) => Padding(
                                        padding:
                                            const EdgeInsets.only(right: 10),
                                        child: ElevatedButton(
                                            style: ElevatedButton.styleFrom(
                                                backgroundColor:
                                                    CustomColors.persianBlue),
                                            onPressed: () {
                                              launchUrl(Uri.parse(jobs[index]
                                                  .links[iLink]
                                                  .url));
                                            },
                                            child: Text(
                                                jobs[index].links[iLink].nome)),
                                      ))),
                        ),
                      ],
                    ))),
      ]),
    );
  }

  Widget projetoSelecionado(BuildContext context, Size size) {
    return GestureDetector(
        onTap: () {
          Navigator.push(
              context,
              MaterialPageRoute(
                builder: (context) => ProjetoPage(projeto: jobs[selecionado]),
              ));
        },
        child: Container(
          width: size.width,
          height: size.height,
          decoration: BoxDecoration(
              image: DecorationImage(
                  image: AssetImage(jobs[selecionado].capaPath))),
        ));
  }
}
