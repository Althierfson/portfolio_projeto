import 'dart:html' as html;

import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Contatos extends StatelessWidget {
  const Contatos({super.key});

  @override
  Widget build(BuildContext context) {
    return Column(
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
                print("Instagram Clicado");
                html.window.open(
                    "https://www.instagram.com/althierfson/", "instagram");
              },
              child: Container(
                width: 200,
                height: 200,
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
                print("Likedin Clicado");
                html.window.open(
                    "https://www.linkedin.com/in/althierfson/", "linkedin");
              },
              child: Container(
                width: 200,
                height: 200,
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
                print("gitHub Clicado");
                html.window.open("https://github.com/althierfson", "github");
              },
              child: Container(
                width: 200,
                height: 200,
                decoration: const BoxDecoration(
                    image: DecorationImage(
                        image: AssetImage("assets/imagens/github.png"))),
              ),
            )
          ],
        )
      ],
    );
  }
}
