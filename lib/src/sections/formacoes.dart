import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_projeto/src/theme/custom_colors.dart';

class Formacao extends StatelessWidget {
  const Formacao({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 1000;
        return isMobile ? buildSectionToPhone(context) : buildSection(context);
      },
    );
  }

  Widget buildSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100, bottom: 100),
      child: Column(
          mainAxisAlignment: MainAxisAlignment.center,
          crossAxisAlignment: CrossAxisAlignment.center,
          children: [
            Text(
              "Minhas Formações",
              style: GoogleFonts.raleway(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
            const SizedBox(
              height: 30,
            ),
            Row(
              mainAxisAlignment: MainAxisAlignment.center,
              children: [
                formacaoTile("Bacharel Em ciência da Computação",
                    "Universidade do Estado Do Rio Grande Do Norte - 2020"),
                const SizedBox(
                  width: 20,
                ),
                formacaoTile("Especialista em Tecnologia da Informação",
                    "Universidade Federal do Rio Grande Do Norte - 2023"),
              ],
            )
          ]),
    );
  }

  Widget buildSectionToPhone(BuildContext context) {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 50),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          Text(
            "Minhas\nFormações",
            style: GoogleFonts.raleway(
                fontSize: 40, fontWeight: FontWeight.w900, color: Colors.white),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          formacaoTileToPhone(context, "Bacharel Em ciência da Computação",
              "Universidade do Estado Do Rio Grande Do Norte - 2020"),
          const SizedBox(
            height: 20,
          ),
          formacaoTileToPhone(
              context,
              "Especialista em Tecnologia da Informação",
              "Universidade Federal do Rio Grande Do Norte - 2023"),
        ],
      ),
    );
  }

  Widget formacaoTile(String form, String base) {
    return Row(
      children: [
        Icon(Icons.school, size: 80, color: CustomColors.bottonBackGround),
        const SizedBox(
          width: 20,
        ),
        Column(
          crossAxisAlignment: CrossAxisAlignment.start,
          children: [
            Text(
              form,
              style: GoogleFonts.raleway(
                  fontSize: 18,
                  fontWeight: FontWeight.w900,
                  color: Colors.white),
            ),
            Text(base, style: GoogleFonts.raleway(color: Colors.white))
          ],
        )
      ],
    );
  }

  Widget formacaoTileToPhone(BuildContext context, String form, String base) {
    return SizedBox(
      width: MediaQuery.of(context).size.width * .9,
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Icon(
            Icons.school,
            size: 60,
            color: CustomColors.bottonBackGround,
          ),
          const SizedBox(
            width: 20,
          ),
          Flexible(
            child: Column(
              crossAxisAlignment: CrossAxisAlignment.start,
              children: [
                Text(
                  form,
                  style: GoogleFonts.raleway(
                      fontSize: 15,
                      fontWeight: FontWeight.w900,
                      color: Colors.white),
                ),
                Text(
                  base,
                  style: GoogleFonts.raleway(color: Colors.white),
                )
              ],
            ),
          )
        ],
      ),
    );
  }
}
