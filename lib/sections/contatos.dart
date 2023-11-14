import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_projeto/check_dispositivo.dart';
import 'package:url_launcher/url_launcher.dart';

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
          Text(
            "Contatos",
            style:
                GoogleFonts.zenDots(fontSize: 40, fontWeight: FontWeight.bold),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  const Text(
                    "Tem algum projeto para trabalharmos juntos?",
                    style: TextStyle(fontSize: 18.0),
                  ),
                  const Text(
                    "althierfsonwork@gmail.com",
                    style:
                        TextStyle(fontSize: 18.0, fontWeight: FontWeight.bold),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  GestureDetector(
                    onTap: () {
                      launchUrl(Uri.parse("www.linkedin.com/in/althierfson"));
                    },
                    child: Image.asset(
                      "assets/imagens/linkedin.png",
                      height: 50.0,
                    ),
                  )
                ],
              )
            ],
          ),
        ],
      ),
    );
  }

  GestureDetector buildButton(
      {required Size size, required String link, required String imagePath}) {
    return GestureDetector(
      onTap: () {
        launchUrl(Uri.parse(link));
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
