import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_projeto/src/utils/check_dispositivo.dart';
import 'package:portfolio_projeto/src/theme/custom_colors.dart';
import 'package:portfolio_projeto/src/shapes/custom_shape.dart';

class Header extends StatefulWidget {
  final Function() onContato;
  const Header({super.key, required this.onContato});

  @override
  State<Header> createState() => _HeaderState();
}

class _HeaderState extends State<Header> {
  List<String> iconsList = [
    "assets/imagens/flutter_icon.png",
    "assets/imagens/adnroid_icon.png",
    "assets/imagens/ios_icon.png"
  ];

  @override
  Widget build(BuildContext context) {
    if (CheckDispositivo.isMobile) {
      return buildPhoneSection(context);
    } else {
      return buildDesktopSection();
    }
  }

  Widget buildDesktopSection() {
    return Container(
      padding: const EdgeInsets.only(top: 100, bottom: 100),
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
              Container(
                padding: const EdgeInsets.fromLTRB(40.0, 8.0, 40.0, 8.0),
                decoration: BoxDecoration(
                    color: CustomColors.persianBlue,
                    borderRadius: BorderRadius.circular(15.0)),
                child: const Text(
                  "Olá Eu sou",
                  style: TextStyle(
                    fontSize: 22,
                    fontWeight: FontWeight.w900,
                    color: Colors.white,
                  ),
                ),
              ),
              const SizedBox(
                height: 20,
              ),
              Text(
                "ALTHIERFSON TULLIO",
                style: GoogleFonts.zenDots(fontSize: 32, color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              const Text(
                "Desenvolvedor Mobile",
                style: TextStyle(
                    fontSize: 28,
                    fontWeight: FontWeight.w500,
                    color: Colors.black),
              ),
              const SizedBox(
                height: 10,
              ),
              Row(
                children: List.generate(
                    iconsList.length,
                    (index) => Image.asset(
                          iconsList[index],
                          height: 50,
                        )),
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
                      color: CustomColors.persianBlue,
                      borderRadius: BorderRadius.all(Radius.circular(80))),
                  child: const Text("Projetos",
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

  Widget buildPhoneSection(BuildContext context) {
    return Container(
      padding: const EdgeInsets.only(top: 100, bottom: 100),
      width: MediaQuery.of(context).size.width,
      decoration: const BoxDecoration(color: Colors.white),
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
          Container(
            padding: const EdgeInsets.fromLTRB(40.0, 8.0, 40.0, 8.0),
            decoration: BoxDecoration(
                color: CustomColors.persianBlue,
                borderRadius: BorderRadius.circular(15.0)),
            child: const Text(
              "Olá Eu sou",
              style: TextStyle(
                fontSize: 22,
                fontWeight: FontWeight.w900,
                color: Colors.white,
              ),
            ),
          ),
          const SizedBox(
            height: 10,
          ),
          Text(
            "ALTHIERFSON TULLIO",
            style: GoogleFonts.zenDots(fontSize: 32, color: Colors.black),
            textAlign: TextAlign.center,
          ),
          const SizedBox(
            height: 20,
          ),
          const Text(
            "Desenvolvedor Mobile",
            style: TextStyle(
                fontSize: 28, fontWeight: FontWeight.w500, color: Colors.black),
          ),
          const SizedBox(
            height: 20,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: List.generate(
                iconsList.length,
                (index) => Image.asset(
                      iconsList[index],
                      height: 50,
                    )),
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
                  color: CustomColors.persianBlue,
                  borderRadius: BorderRadius.all(Radius.circular(80))),
              child: const Text("Projetos",
                  style: TextStyle(
                      fontSize: 28,
                      fontWeight: FontWeight.w700,
                      color: Colors.white)),
            ),
          )
        ],
      ),
    );
  }
}
