import 'package:flutter/material.dart';
import 'package:flutter/widgets.dart';

class Contatos extends StatelessWidget {
  const Contatos({super.key});

  @override
  Widget build(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100, bottom: 100),
      child: Column(
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
                },
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage("assets/imagens/fundo_header.png"))),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {
                  print("Likedin Clicado");
                },
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage("assets/imagens/fundo_header.png"))),
                ),
              ),
              const SizedBox(
                width: 30,
              ),
              GestureDetector(
                onTap: () {
                  print("gitHub Clicado");
                },
                child: Container(
                  width: 200,
                  height: 200,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image:
                              AssetImage("assets/imagens/fundo_header.png"))),
                ),
              )
            ],
          )
        ],
      ),
    );
  }
}
