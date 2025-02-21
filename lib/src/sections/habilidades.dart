import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_projeto/src/entidades/skills.dart';
import 'package:portfolio_projeto/src/theme/custom_colors.dart';
import 'package:portfolio_projeto/src/widgets/custom_progress_bar.dart';
import 'package:portfolio_projeto/src/widgets/smooth_indicator.dart';

class Habilidades extends StatefulWidget {
  final List<Skill> habilidades;
  const Habilidades({super.key, required this.habilidades});

  @override
  State<Habilidades> createState() => _HabilidadesState();
}

class _HabilidadesState extends State<Habilidades> {
  late List<Skill> habilidades;
  int selecionado = 0;

  final PageController _pageController = PageController();

  @override
  void initState() {
    habilidades = widget.habilidades;
    super.initState();
  }

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 900;
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
              physics: NeverScrollableScrollPhysics(),
              gridDelegate: const SliverGridDelegateWithFixedCrossAxisCount(
                  crossAxisCount: 3,
                  mainAxisExtent: 100,
                  crossAxisSpacing: 100),
              itemCount: habilidades.length,
              itemBuilder: (context, index) {
                return Row(
                  mainAxisSize: MainAxisSize.min,
                  mainAxisAlignment: MainAxisAlignment.start,
                  crossAxisAlignment: CrossAxisAlignment.start,
                  children: [
                    Container(
                        width: 50,
                        height: 50,
                        alignment: Alignment.center,
                        decoration: BoxDecoration(
                            color: habilidades[index].icon.isEmpty
                                ? Colors.grey
                                : null,
                            borderRadius: BorderRadius.circular(90)),
                        child: habilidades[index].icon.isNotEmpty
                            ? Image.asset(habilidades[index].icon)
                            : Text(
                                habilidades[index].titulo,
                                style: GoogleFonts.raleway(
                                    color: Colors.white,
                                    fontWeight: FontWeight.w900),
                              )),
                    const SizedBox(
                      width: 20,
                    ),
                    Expanded(
                        child: CustomProgressBar(
                      percentage: habilidades[index].level,
                      filledColor: CustomColors.bottonBackGround,
                    ))
                  ],
                );
              }),
        ),
      ]),
    );
  }

  Widget buildPhoneSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(crossAxisAlignment: CrossAxisAlignment.center, children: [
        Text(
          "Habilidades",
          style: GoogleFonts.zenDots(fontSize: 40, color: Colors.white),
        ),
        const SizedBox(
          height: 20,
        ),
        Text(
          "Habilidades e Ferramentas\nque Domino",
          style: GoogleFonts.zenDots(fontSize: 15, color: Colors.white),
          textAlign: TextAlign.center,
        ),
        const SizedBox(
          height: 30,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * .9,
          height: 130,
          child: PageView.builder(
              controller: _pageController,
              scrollDirection: Axis.horizontal,
              itemCount: habilidades.length,
              itemBuilder: (context, index) => Column(
                    children: [
                      Container(
                          width: 70,
                          height: 70,
                          alignment: Alignment.center,
                          decoration: BoxDecoration(
                              color: habilidades[index].icon.isEmpty
                                  ? Colors.grey
                                  : null,
                              borderRadius: BorderRadius.circular(90)),
                          child: habilidades[index].icon.isNotEmpty
                              ? Image.asset(habilidades[index].icon)
                              : Text(
                                  habilidades[index].titulo,
                                  style: GoogleFonts.raleway(
                                      color: Colors.white,
                                      fontWeight: FontWeight.w900),
                                )),
                      const SizedBox(
                        width: 20,
                      ),
                      SizedBox(
                          width: MediaQuery.of(context).size.width * 0.8,
                          child: CustomProgressBar(
                            percentage: habilidades[index].level,
                            filledColor: CustomColors.bottonBackGround,
                          ))
                    ],
                  )),
        ),
        SmoothIndicator(
          controller: _pageController,
          itemCount: habilidades.length,
          activeColor: CustomColors.bottonBackGround,
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
                color: Colors.grey,
                borderRadius: BorderRadius.circular(90),
                image: habilidades[selecionado].icon.isNotEmpty
                    ? DecorationImage(
                        image: AssetImage(habilidades[selecionado].icon))
                    : null),
            child: Text(
              habilidades[selecionado].titulo,
              style: GoogleFonts.raleway(color: Colors.black),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          SizedBox(
            width: size.width,
            child: Text(
              habilidades[selecionado].titulo,
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}
