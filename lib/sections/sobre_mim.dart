import 'package:flutter/material.dart';
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
              const Text(
                "Sobre Mim",
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.w900),
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
          const Text(
            "Sobre Mim",
            style: TextStyle(fontSize: 48, fontWeight: FontWeight.w900),
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
    "Meu objetivo e crescer! Tenho vontade de aprender e melhora, acredito que a vida ?? parecida com um avi??o, ou voc?? esta subindo, ou esta caindo, e eu n??o tenho nem um planos de cair, por isso busco sempre almentar meu horizonte, e continuar evoluindo constatnemente, dia a dia.";
