import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_projeto/check_dispositivo.dart';
import 'package:portfolio_projeto/custom_colors.dart';
import 'package:portfolio_projeto/entidades/job.dart';
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
      decoration: const BoxDecoration(color: Color(0xFF77C159)),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text(
          widget.titulo,
          style: GoogleFonts.zenDots(fontSize: 42, fontWeight: FontWeight.bold),
          textAlign: TextAlign.center,
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
                size: 50,
              ),
            ),
            projetoSelecionado(context, const Size(1920 * 0.10, 1080 * 0.10)),
            GestureDetector(
              onTap: () {
                setState(() {
                  selecionado < jobs.length - 1 ? selecionado++ : selecionado;
                });
              },
              child: const Icon(
                Icons.arrow_forward_ios,
                size: 50,
              ),
            ),
          ],
        )
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
