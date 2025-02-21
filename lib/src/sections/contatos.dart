import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:url_launcher/url_launcher.dart';

class Contatos extends StatelessWidget {
  const Contatos({super.key});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 900;
        return isMobile
            ? buildSection(const Size(60, 60))
            : buildSection(const Size(150, 150));
      },
    );
  }

  Container buildSection(Size size) {
    return Container(
      padding: const EdgeInsets.only(top: 100, bottom: 100),
      child: Column(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          Text(
            "Contato",
            style: GoogleFonts.raleway(
                fontSize: 40, fontWeight: FontWeight.bold, color: Colors.white),
          ),
          const SizedBox(
            height: 30,
          ),
          Row(
            mainAxisAlignment: MainAxisAlignment.center,
            children: [
              Column(
                children: [
                  Text(
                    "althierfson@gmail.com",
                    style: GoogleFonts.raleway(
                        fontSize: 18.0,
                        fontWeight: FontWeight.bold,
                        color: Colors.white),
                  ),
                  const SizedBox(
                    height: 10.0,
                  ),
                  Row(
                    mainAxisSize: MainAxisSize.min,
                    children: [
                      GestureDetector(
                        onTap: () {
                          launchUrl(Uri.parse(
                              "https://www.linkedin.com/in/althierfson/"));
                        },
                        child: Image.asset(
                          "assets/imagens/linkedin.png",
                          height: 50.0,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          launchUrl(
                              Uri.parse("https://github.com/Althierfson"));
                        },
                        child: Image.asset(
                          "assets/imagens/github.png",
                          height: 50.0,
                        ),
                      ),
                      const SizedBox(
                        width: 20,
                      ),
                      GestureDetector(
                        onTap: () {
                          launchUrl(
                              Uri.parse("https://www.youtube.com/@cajucode"));
                        },
                        child: Image.asset(
                          "assets/imagens/youtube.png",
                          height: 50.0,
                        ),
                      )
                    ],
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
