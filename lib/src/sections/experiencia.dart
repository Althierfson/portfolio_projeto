import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_projeto/src/entidades/experience.dart';
import 'package:portfolio_projeto/src/theme/custom_colors.dart';

class Experiencia extends StatelessWidget {
  final List<Experience> exps;
  const Experiencia({super.key, required this.exps});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 900;
        return isMobile
            ? buildSectionToPhone(context)
            : buildSectionToDesktop(context);
      },
    );
  }

  buildSectionToDesktop(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100, bottom: 100),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Minhas Experiências",
              style: GoogleFonts.raleway(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
              mainAxisAlignment: MainAxisAlignment.center,
              children: List.generate(
                  exps.length, (index) => expTile(context, exps[index])),
            )
          ]),
    );
  }

  buildSectionToPhone(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Minhas Experiências",
              style: GoogleFonts.raleway(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
              textAlign: TextAlign.center,
            ),
            const SizedBox(
              height: 30,
            ),
            Column(
                mainAxisAlignment: MainAxisAlignment.center,
                children: List.generate(
                    exps.length,
                    (index) => Column(
                          children: [
                            Container(
                              width: 100,
                              height: 100,
                              decoration: BoxDecoration(
                                  borderRadius: BorderRadius.circular(90),
                                  color: Colors.grey),
                              child: exps[index].empresaLogo.isEmpty
                                  ? Icon(Icons.work)
                                  : ClipOval(
                                      child:
                                          Image.asset(exps[index].empresaLogo)),
                            ),
                            const SizedBox(
                              height: 10,
                            ),
                            SizedBox(
                              width: MediaQuery.of(context).size.width * 0.9,
                              child: Column(
                                crossAxisAlignment: CrossAxisAlignment.start,
                                children: [
                                  Text(
                                    exps[index].posicao,
                                    style: GoogleFonts.raleway(
                                        fontSize: 18,
                                        fontWeight: FontWeight.w900,
                                        color: Colors.white),
                                  ),
                                  for (var desc in exps[index].descritions)
                                    Padding(
                                      padding: const EdgeInsets.only(left: 10),
                                      child: Text("\u2981 $desc",
                                          style: GoogleFonts.raleway(
                                              color: Colors.white)),
                                    ),
                                  const SizedBox(
                                    height: 5,
                                  ),
                                  _buildFeatureProject(exps[index].features),
                                  const SizedBox(
                                    height: 20,
                                  ),
                                ],
                              ),
                            )
                          ],
                        ))),
          ]),
    );
  }

  Widget expTile(BuildContext context, Experience exp) {
    return Row(
      mainAxisSize: MainAxisSize.min,
      crossAxisAlignment: CrossAxisAlignment.start,
      children: [
        Container(
          width: 80,
          height: 80,
          decoration: BoxDecoration(
              borderRadius: BorderRadius.circular(90), color: Colors.grey),
          child: exp.empresaLogo.isEmpty
              ? Icon(Icons.work)
              : ClipOval(child: Image.asset(exp.empresaLogo)),
        ),
        const SizedBox(
          width: 20,
        ),
        SizedBox(
          width: MediaQuery.of(context).size.width * 0.5,
          child: Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              Text(
                exp.posicao,
                style: GoogleFonts.raleway(
                    fontSize: 18,
                    fontWeight: FontWeight.w900,
                    color: Colors.white),
              ),
              for (var desc in exp.descritions)
                Padding(
                  padding: const EdgeInsets.only(left: 10),
                  child: Text("\u2981 $desc",
                      style: GoogleFonts.raleway(color: Colors.white)),
                ),
              const SizedBox(
                height: 5,
              ),
              _buildFeatureProject(exp.features),
              const SizedBox(
                height: 20,
              ),
            ],
          ),
        )
      ],
    );
  }

  _buildFeatureProject(List<String> list) {
    return Wrap(
      spacing: 5,
      runSpacing: 5,
      children: List.generate(
        list.length,
        (index) => Container(
            padding: const EdgeInsets.only(left: 5, right: 5),
            decoration: BoxDecoration(
                color: CustomColors.bottonBackGround,
                borderRadius: BorderRadius.circular(10)),
            child: Text(
              "#${list[index]}",
              style: GoogleFonts.raleway(color: Colors.white),
            )),
      ),
    );
  }
}
