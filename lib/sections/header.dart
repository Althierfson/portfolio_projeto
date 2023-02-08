import 'package:flutter/material.dart';
import 'package:portfolio_projeto/check_dispositivo.dart';
import 'package:portfolio_projeto/shapes/custom_shape.dart';

class Header extends StatefulWidget {
  final Function() onContato;
  const Header({super.key, required this.onContato});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  @override
  Widget build(BuildContext context) {
    if (CheckDispositivo.isMobile) {
      return buildSectionToPhone(context);
    } else {
      return buildSection();
    }
  }

  Widget buildSection() {
    return Container(
      padding: const EdgeInsets.only(top: 100, bottom: 100),
      decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.cover,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.dstATop),
            image: const AssetImage(
              "assets/imagens/fundo_header.png",
            ),
          )),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          CustomPaint(
            painter: CustomShape(),
            child: Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/imagens/perfil_2.png"),
                      fit: BoxFit.contain)),
            ),
          ),
          const SizedBox(
            width: 20,
          ),
          Column(
            crossAxisAlignment: CrossAxisAlignment.start,
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              const Text(
                "Olá! Eu sou\nAlthierfson Tullio",
                style: TextStyle(
                  fontSize: 40,
                  fontWeight: FontWeight.w900,
                  color: Colors.white,
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              const Text(
                "Desenvolvedor Mobile",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: Colors.white),
              ),
              const SizedBox(
                height: 30,
              ),
              GestureDetector(
                onTap: widget.onContato,
                child: Container(
                  padding: const EdgeInsets.only(
                      left: 20, right: 20, top: 10, bottom: 10),
                  decoration: const BoxDecoration(
                      color: Colors.blue,
                      borderRadius: BorderRadius.all(Radius.circular(80))),
                  child: const Text("Contatos",
                      style: TextStyle(
                          fontSize: 28,
                          fontWeight: FontWeight.w700,
                          color: Colors.white)),
                ),
              )
            ],
          ),
          const SizedBox(
            width: 20,
          ),
          Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              CustomPaint(
                painter: CustomShape(),
                size: const Size(200, 200),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 60, left: 60),
                child: Container(
                  width: 212,
                  height: 446,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/imagens/capa_phone.png"))),
                ),
              ),
            ],
          ),
        ],
      ),
    );
  }

  Widget buildSectionToPhone(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100, bottom: 100),
      width: MediaQuery.of(context).size.width,
      decoration: BoxDecoration(
          color: Colors.black,
          image: DecorationImage(
            fit: BoxFit.fitHeight,
            colorFilter: ColorFilter.mode(
                Colors.black.withOpacity(0.2), BlendMode.dstATop),
            image: const AssetImage(
              "assets/imagens/fundo_header.png",
            ),
          )),
      child: Column(
        children: [
          CustomPaint(
            painter: CustomShape(),
            child: Container(
              height: 200,
              width: 200,
              decoration: const BoxDecoration(
                  shape: BoxShape.circle,
                  image: DecorationImage(
                      image: AssetImage("assets/imagens/perfil_2.png"),
                      fit: BoxFit.contain)),
            ),
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Olá! Eu sou\nAlthierfson Tullio",
            style: TextStyle(
              fontSize: 40,
              fontWeight: FontWeight.w900,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Desenvolvedor Mobile",
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.w500, color: Colors.white),
          ),
          const SizedBox(
            height: 20,
          ),
          Stack(
            alignment: AlignmentDirectional.bottomStart,
            children: [
              CustomPaint(
                painter: CustomShape(),
                size: const Size(200, 200),
              ),
              Padding(
                padding: const EdgeInsets.only(bottom: 60, left: 60),
                child: Container(
                  width: 212,
                  height: 446,
                  decoration: const BoxDecoration(
                      image: DecorationImage(
                          image: AssetImage("assets/imagens/capa_phone.png"))),
                ),
              ),
            ],
          ),
          const SizedBox(
            height: 30,
          ),
          GestureDetector(
            onTap: widget.onContato,
            child: Container(
              padding: const EdgeInsets.only(
                  left: 20, right: 20, top: 10, bottom: 10),
              decoration: const BoxDecoration(
                  color: Colors.blue,
                  borderRadius: BorderRadius.all(Radius.circular(80))),
              child: const Text("Contatos",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.white)),
            ),
          ),
        ],
      ),
    );
  }
}
