import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_projeto/src/theme/custom_colors.dart';
import 'package:portfolio_projeto/src/entidades/job.dart';
import 'package:portfolio_projeto/src/widgets/custom_progress_bar.dart';

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
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 800;
        return isMobile
            ? buildPhoneSection(context)
            : buildSectionDesktop(context);
      },
    );
  }

  Container buildSectionDesktop(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100, bottom: 100),
      child: Column(mainAxisAlignment: MainAxisAlignment.center, children: [
        Text(
          "Habilidades",
          style: GoogleFonts.raleway(fontSize: 40, color: Colors.white),
        ),
        const SizedBox(
          height: 50,
        ),
        Text(
          "Habilidades e Ferramentas que Domino",
          style: GoogleFonts.raleway(fontSize: 20, color: Colors.white),
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.7,
          child: GridView.builder(
              shrinkWrap: true, 
              physics:
                  NeverScrollableScrollPhysics(), 
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 2,
                  mainAxisExtent: 100,
                  crossAxisSpacing: 100),
              itemCount: habilidades.length,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    SizedBox(
                        width: 50,
                        height: 50,
                        child: Image.asset(habilidades[index].capaPath)),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: CustomProgressBar(
                      percentage: 50,
                      filledColor: CustomColors.bottonBackGround,
                    ))
                  ],
                );
              }),
        ),
        // Row(
        //   mainAxisAlignment: MainAxisAlignment.center,
        //   crossAxisAlignment: CrossAxisAlignment.start,
        //   children: [
        //     SizedBox(
        //       width: MediaQuery.of(context).size.width * 0.7,
        //       child: Column(
        //         children: [
        //           Text(
        //             habilidades[selecionado].titulo,
        //             style: GoogleFonts.raleway(
        //                 fontSize: 34,
        //                 fontWeight: FontWeight.bold,
        //                 color: Colors.white),
        //           ),
        //           Text(
        //             habilidades[selecionado].texto,
        //             style: GoogleFonts.raleway(
        //                 fontSize: 18.0, color: Colors.white),
        //           )
        //         ],
        //       ),
        //     )
        //   ],
        // )
      ]),
    );
  }

  Widget buildPhoneSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100, bottom: 100),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text(
          "Habilidades",
          style: GoogleFonts.zenDots(fontSize: 40, color: Colors.white),
        ),
        const SizedBox(
          height: 50,
        ),
        const Text(
          "Habilidades e Ferramentas que Domino",
          style: TextStyle(fontSize: 20),
        ),
        const SizedBox(
          height: 30,
        ),
        SingleChildScrollView(
          scrollDirection: Axis.horizontal,
          child: Row(
            children: List.generate(
                habilidades.length,
                (index) => GestureDetector(
                      onTap: () {
                        setState(() {
                          selecionado = index;
                        });
                      },
                      child: Image.asset(
                        habilidades[index].capaPath,
                        height: 100,
                      ),
                    )),
          ),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Text(
          habilidades[selecionado].titulo,
          style: GoogleFonts.zenDots(fontSize: 30, color: Colors.black),
        ),
        const SizedBox(
          height: 15.0,
        ),
        Container(
          width: MediaQuery.of(context).size.width,
          padding: const EdgeInsets.all(10),
          child: Text(
            habilidades[selecionado].texto,
            style: const TextStyle(fontSize: 16),
            textAlign: TextAlign.center,
          ),
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
          ),
        ],
      ),
    );
  }
}
