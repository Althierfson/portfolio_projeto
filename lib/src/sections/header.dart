import 'package:flutter/material.dart';
import 'package:google_fonts/google_fonts.dart';
import 'package:portfolio_projeto/src/theme/custom_colors.dart';
import 'package:portfolio_projeto/src/shapes/custom_shape.dart';

class Header extends StatelessWidget {
  final VoidCallback onContato;

  const Header({super.key, required this.onContato});

  @override
  Widget build(BuildContext context) {
    return LayoutBuilder(
      builder: (context, constraints) {
        bool isMobile = constraints.maxWidth < 900;
        return isMobile ? buildMobileLayout() : buildDesktopLayout();
      },
    );
  }

  Widget buildDesktopLayout() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 100),
      child: Row(
        mainAxisAlignment: MainAxisAlignment.center,
        children: [
          buildTextSection(),
          const SizedBox(width: 100),
          buildImageSection(size: 300),
        ],
      ),
    );
  }

  Widget buildMobileLayout() {
    return Container(
      padding: const EdgeInsets.symmetric(vertical: 80),
      width: double.infinity,
      child: Column(
        children: [
          buildImageSection(size: 200),
          const SizedBox(height: 20),
          buildTextSection(),
        ],
      ),
    );
  }

  Widget buildTextSection() {
    return Column(
      crossAxisAlignment: CrossAxisAlignment.center,
      children: [
        Text(
          "ALTHIERFSON TULLIO",
          style: GoogleFonts.raleway(
            fontSize: 32,
            fontWeight: FontWeight.bold,
            color: Colors.white,
          ),
        ),
        const SizedBox(height: 10),
        SizedBox(
          width: 300,
          child: Text(
            "Que software ou app vamos criar hoje para superar os de amanhã?",
            style: GoogleFonts.raleway(
              fontSize: 16,
              fontWeight: FontWeight.w500,
              color: Colors.white,
            ),
            textAlign: TextAlign.center,
          ),
        ),
        const SizedBox(height: 30),
        buildButton(),
      ],
    );
  }

  Widget buildButton() {
    return GestureDetector(
      onTap: onContato,
      child: Container(
        padding: const EdgeInsets.symmetric(horizontal: 40, vertical: 15),
        decoration: BoxDecoration(
          color: CustomColors.bottonBackGround,
          border: Border.all(color: const Color(0xff62BA1B)),
          borderRadius: BorderRadius.circular(5),
        ),
        child: Text(
          "Ver Projetos",
          style: GoogleFonts.raleway(fontSize: 18, color: Colors.white),
        ),
      ),
    );
  }

  Widget buildImageSection({required double size}) {
    return CustomPaint(
      painter: CustomShape(),
      child: Container(
        height: size,
        width: size,
        decoration: const BoxDecoration(
          shape: BoxShape.circle,
          image: DecorationImage(
            image: AssetImage("assets/imagens/perfil_2.png"),
            fit: BoxFit.contain,
          ),
        ),
      ),
    );
  }
}
