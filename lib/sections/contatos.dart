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
      return buildSection(const Size(200, 200));
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
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              GestureDetector(
                onTap: () {
                  html.window.open(
                      "https://www.instagram.com/althierfson/", "instagram");
                },
                child: Container(
                  width: size.width,
                  height: size.height,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/imagens/Instagram.png"))),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {
                  html.window.open(
                      "https://www.linkedin.com/in/althierfson/", "linkedin");
                },
                child: Container(
                  width: size.width,
                  height: size.height,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/imagens/linkedin.png"))),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {
                  html.window.open("https://github.com/althierfson", "github");
                },
                child: Container(
                  width: size.width,
                  height: size.height,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/imagens/github.png"))),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
