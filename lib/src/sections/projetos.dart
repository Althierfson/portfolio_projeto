import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_projeto/src/entidades/links.dart';
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
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 800;
        return isMobile
            ? buildPhoneSection(context)
            : buildDesktopSection(context);
      },
    );
  }

  Container buildDesktopSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100),
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
                  style: GoogleFonts.raleway(
                      fontSize: 42,
                      fontWeight: FontWeight.bold,
                      color: Colors.white),
                ),
              );
            }

            List<Widget> children = [
              _buildProjectImage(jobs[index - 1].capaPath),
              const SizedBox(
                width: 30.0,
              ),
              Column(
                crossAxisAlignment: CrossAxisAlignment.start,
                children: [
                  _buildFeatureProject(List.generate(5, (index) => "Flutter")),
                  _buildProjectTitle(jobs[index - 1].titulo),
                  _buildProjectText(jobs[index - 1].texto, 500),
                  _buildProjectActions(jobs[index - 1].links),
                ],
              ),
            ];

            if (index % 2 == 0) {
              return Padding(
                padding: const EdgeInsets.only(bottom: 100.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: children,
                ),
              );
            } else {
              return Padding(
                padding: const EdgeInsets.only(bottom: 100.0),
                child: Row(
                  mainAxisAlignment: MainAxisAlignment.center,
                  children: children.reversed.toList(),
                ),
              );
            }
          })),
    );
  }

  Widget buildPhoneSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text(
          widget.titulo,
          style: GoogleFonts.raleway(
              fontSize: 42, fontWeight: FontWeight.bold, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 50,
        ),
        Column(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                5,
                (index) => Container(
                      padding: const EdgeInsets.only(bottom: 20),
                      child: Column(
                        children: [
                          _buildProjectImage(jobs[index].capaPath),
                          _buildFeatureProject(
                              List.generate(5, (index) => "Flutter")),
                          _buildProjectTitle(jobs[index].titulo),
                          _buildProjectText(jobs[index].texto,
                              MediaQuery.of(context).size.width * 0.9),
                          const SizedBox(
                            height: 15,
                          ),
                          _buildProjectActions(jobs[index].links),
                        ],
                      ),
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

  _buildFeatureProject(List<String> list) {
    return Row(
      children: List.generate(
        list.length,
        (index) => Padding(
          padding: const EdgeInsets.only(right: 8.0),
          child: Container(
              padding: const EdgeInsets.only(left: 5, right: 5),
              decoration: BoxDecoration(
                  color: CustomColors.bottonBackGround,
                  borderRadius: BorderRadius.circular(10)),
              child: Text(
                "#${list[index]}",
                style: GoogleFonts.raleway(color: Colors.white),
              )),
        ),
      ),
    );
  }

  _buildProjectText(String texto, double size) {
    return SizedBox(
      width: size,
      child: Text(texto,
          style: GoogleFonts.raleway(fontSize: 16, color: Colors.white),
          textAlign: TextAlign.justify),
    );
  }

  _buildProjectActions(List<Link> links) {
    return SingleChildScrollView(
      scrollDirection: Axis.horizontal,
      child: Row(
          children: List.generate(
              links.length,
              (iLink) => Padding(
                    padding: const EdgeInsets.only(right: 10),
                    child: ElevatedButton(
                        style: ElevatedButton.styleFrom(
                            backgroundColor: CustomColors.bottonBackGround),
                        onPressed: () {
                          launchUrl(Uri.parse(links[iLink].url));
                        },
                        child: Text(
                          links[iLink].nome,
                          style: GoogleFonts.raleway(color: Colors.white),
                        )),
                  ))),
    );
  }

  _buildProjectImage(String capaPath) {
    return Container(
      decoration: BoxDecoration(
        boxShadow: [
          BoxShadow(
              offset: Offset(-10, -10),
              color: Colors.white.withAlpha(60),
              blurRadius: 0.6,
              spreadRadius: 0.6)
        ],
      ),
      child: Image.asset(
        capaPath,
        height: 200,
        fit: BoxFit.fitWidth,
      ),
    );
  }

  _buildProjectTitle(String titulo) {
    return Text(
      titulo,
      style: GoogleFonts.raleway(
          fontSize: 22, fontWeight: FontWeight.bold, color: Colors.white),
    );
  }
}
