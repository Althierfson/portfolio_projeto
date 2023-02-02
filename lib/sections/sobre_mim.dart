import 'package:flutter/material.dart';
import 'package:portfolio_projeto/shapes/custom_shape.dart';

class SobreMim extends StatelessWidget {
  const SobreMim({super.key});

  @override
  Widget build(BuildContext context) {
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
              child: Placeholder(),
            ),
          ),
          const SizedBox(
            width: 50,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            children: [
              const Text(
                "Sobre Mim",
                style: TextStyle(fontSize: 48, fontWeight: FontWeight.w900),
              ),
              const SizedBox(
                height: 30,
              ),
              Text(
                descricao,
                style: const TextStyle(fontSize: 20),
              ),
            ],
          )
        ],
      ),
    );
  }
}

String descricao =
    "Tenho 25 anos e meu objetivo e crescer!\nTenho vontade de aprender e melhora,\nacredito que a vida é parecida com um avião,\nou você esta subindo, ou esta caindo,\ne eu não tenho nem um planos de cair,\npor isso busco sempre almentar meu horizonte,\ne continuar evoluindo constatnemente, dia a dia.";
