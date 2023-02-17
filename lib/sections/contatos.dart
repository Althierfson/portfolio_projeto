import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:portfolio_projeto/check_dispositivo.dart';

class Contatos extends StatelessWidget {
  const Contatos({super.key});

  @override
  Widget build(BuildContext context) {
    if (CheckDispositivo.isMobile) {
      return buildSection(const Size(60, 60));
    } else {
      return buildSection(const Size(150, 150));
    }
  }

  Container buildSection(Size size) {
    return Container(
      padding: const EdgeInsets.only(top: 100, bottom: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          const Text(
            "Contatos",
            style: TextStyle(fontSize: 40, fontWeight: FontWeight.w900),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              buildButton(
                  size: size,
                  link: "https://instagram.com/althierfson",
                  imagePath: "assets/imagens/Instagram.png"),
              const SizedBox(
                width: 30,
              ),
              buildButton(
                  size: size,
                  link: "https://www.linkedin.com/in/althierfson/",
                  imagePath: "assets/imagens/linkedin.png"),
              const SizedBox(
                width: 30,
              ),
              buildButton(
                  size: size,
                  link: "https://github.com/althierfson",
                  imagePath: "assets/imagens/github.png"),
              const SizedBox(
                width: 30,
              ),
              buildButton(
                  size: size,
                  link:
                      "https://play.google.com/store/apps/dev?id=7991476839615258497",
                  imagePath: "assets/imagens/google_play.png"),
            ],
          )
        ],
      ),
    );
  }

  GestureDetector buildButton(
      {required Size size, required String link, required String imagePath}) {
    return GestureDetector(
      onTap: () {
        html.window.open(link, "Nova Aba");
      },
      child: Container(
        width: size.width,
        height: size.height,
        decoration:
            BoxDecoration(image: DecorationImage(image: AssetImage(imagePath))),
      ),
    );
  }
}
