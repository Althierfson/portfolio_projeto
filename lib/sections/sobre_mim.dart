import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_projeto/check_dispositivo.dart';
import 'package:portfolio_projeto/shapes/custom_shape.dart';

class SobreMim extends StatelessWidget {
  const SobreMim({super.key});

  @override
  Widget build(BuildContext context) {
    if (CheckDispositivo.isMobile) {
      return buildSectionToPhone(context);
    } else {
      return buildSection(context);
    }
  }

  Widget buildSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100, bottom: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomPaint(
            painter: CustomShape(),
            child: Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/imagens/perfil_1.png"),
                      fit: BoxFit.contain),
                  shape: BoxShape.circle),
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Text(
                "Sobre Mim",
                style: GoogleFonts.zenDots(
                    fontSize: 42, fontWeight: FontWeight.bold),
              ),
              const SizedBox(
                height: 30,
              ),
              SizedBox(
                width: MediaQuery.of(context).size.width * 0.20,
                child: Text(
                  descricao,
                  style: const TextStyle(fontSize: 20),
                ),
              ),
            ],
          )
        ],
      ),
    );
  }

  Widget buildSectionToPhone(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100, bottom: 100),
      child: Column(
        crossAxisAlignment: CrossAxisAlignment.center,
        children: [
          CustomPaint(
            painter: CustomShape(),
            child: Container(
              height: 300,
              width: 300,
              decoration: const BoxDecoration(
                  image: DecorationImage(
                      image: AssetImage("assets/imagens/perfil_1.png"),
                      fit: BoxFit.contain),
                  shape: BoxShape.circle),
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          Text(
            "Sobre Mim",
            style:
                GoogleFonts.zenDots(fontSize: 48, fontWeight: FontWeight.bold),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 30,
          ),
          Padding(
            padding: const EdgeInsets.only(left: 8, right: 8),
            child: Text(
              descricao,
              style: const TextStyle(fontSize: 20),
              textAlign: TextAlign.center,
            ),
          ),
        ],
      ),
    );
  }
}

String descricao =
    "Meu objetivo e crescer! Tenho vontade de aprender e melhora, acredito que a vida é parecida com um avião, ou você esta subindo, ou esta caindo, e eu não tenho nem um planos de cair, por isso busco sempre almentar meu horizonte, e continuar evoluindo constatnemente, dia a dia.";
