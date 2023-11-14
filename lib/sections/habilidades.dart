import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_projeto/check_dispositivo.dart';
import 'package:portfolio_projeto/entidades/job.dart';

class Habilidades extends StatefulWidget {
  final List<Job> habilidades;
  const Habilidades({super.key, required this.habilidades});

  @override
  State<Habilidades> createState() => _HabilidadesState();
}

class _HabilidadesState extends State<Habilidades> {
  late List<Job> habilidades;
  int selecionado = 0;

  @override
  void initState() {
    habilidades = widget.habilidades;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    if (CheckDispositivo.isMobile) {
      return buildPhoneSection(context);
    } else {
      return buildSectionDesktop(context);
    }
  }

  Container buildSectionDesktop(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100, bottom: 100),
      width: MediaQuery.of(context).size.width,
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Habilidades",
          style: GoogleFonts.zenDots(fontSize: 40, color: Colors.black),
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          "Habilidaes e Ferramentas que Domino",
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 30,
        ),
        Row(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            SizedBox(
              width: 500.0,
              height: 300.0,
              child: GridView.builder(
                  gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                      crossAxisCount: 3, mainAxisExtent: 120.0),
                  itemCount: habilidades.length,
                  itemBuilder: (context, index) {
                    return GestureDetector(
                      onTap: () {
                        setState(() {
                          selecionado = index;
                        });
                      },
                      child: GridTile(
                          child: Image.asset(
                        habilidades[index].capaPath,
                      )),
                    );
                  }),
            ),
            SizedBox(
              width: 300.0,
              child: Column(
                children: [
                  Text(
                    habilidades[selecionado].titulo,
                    style: GoogleFonts.zenDots(
                        fontSize: 34, fontWeight: FontWeight.bold),
                  ),
                  Text(
                    habilidades[selecionado].texto,
                    style: const TextStyle(fontSize: 18.0),
                  )
                ],
              ),
            )
          ],
        )
      ]),
    );
  }

  Widget buildPhoneSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100, bottom: 100),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        const Text(
          "Habilidades",
          style: TextStyle(
            fontSize: 48,
            fontWeight: FontWeight.w900,
            color: Colors.white,
          ),
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          "Aqui estão algumas habilidaes e ferramentas que já tive experiência",
          style: TextStyle(fontSize: 20),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 30,
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
            const SizedBox(
              width: 20,
            ),
            buildHabilidade(const Size(1920 * 0.10, 1080 * 0.10)),
            const SizedBox(
              width: 20,
            ),
            GestureDetector(
              onTap: () {
                setState(() {
                  selecionado < habilidades.length - 1
                      ? selecionado++
                      : selecionado;
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

  SizedBox buildHabilidade(Size size) {
    return SizedBox(
      child: Column(
        children: [
          Container(
            width: size.width, //1920 * 0.20,
            height: size.height, //1080 * 0.20,
            decoration: BoxDecoration(
                image: DecorationImage(
                    image: AssetImage(habilidades[selecionado].capaPath))),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: size.width,
            child: Text(
              habilidades[selecionado].texto,
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          )
        ],
      ),
    );
  }
}
